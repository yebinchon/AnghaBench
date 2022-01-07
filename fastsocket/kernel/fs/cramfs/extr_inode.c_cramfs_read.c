
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {TYPE_2__* s_bdev; } ;
struct page {int dummy; } ;
struct address_space {TYPE_3__* host; } ;
struct TYPE_6__ {unsigned int i_size; } ;
struct TYPE_5__ {TYPE_1__* bd_inode; } ;
struct TYPE_4__ {struct address_space* i_mapping; } ;


 int BLKS_PER_BUF ;
 unsigned int BUFFER_SIZE ;
 scalar_t__ IS_ERR (struct page*) ;
 unsigned int NEXT_BUFFER (unsigned int) ;
 unsigned int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 unsigned int READ_BUFFERS ;
 unsigned int* buffer_blocknr ;
 struct super_block** buffer_dev ;
 int kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (char*,int ,int) ;
 int memset (char*,int ,int) ;
 unsigned int next_buffer ;
 int page_cache_release (struct page*) ;
 void** read_buffers ;
 struct page* read_mapping_page_async (struct address_space*,unsigned int,int *) ;
 int wait_on_page_locked (struct page*) ;

__attribute__((used)) static void *cramfs_read(struct super_block *sb, unsigned int offset, unsigned int len)
{
 struct address_space *mapping = sb->s_bdev->bd_inode->i_mapping;
 struct page *pages[BLKS_PER_BUF];
 unsigned i, blocknr, buffer;
 unsigned long devsize;
 char *data;

 if (!len)
  return ((void*)0);
 blocknr = offset >> PAGE_CACHE_SHIFT;
 offset &= PAGE_CACHE_SIZE - 1;


 for (i = 0; i < READ_BUFFERS; i++) {
  unsigned int blk_offset;

  if (buffer_dev[i] != sb)
   continue;
  if (blocknr < buffer_blocknr[i])
   continue;
  blk_offset = (blocknr - buffer_blocknr[i]) << PAGE_CACHE_SHIFT;
  blk_offset += offset;
  if (blk_offset + len > BUFFER_SIZE)
   continue;
  return read_buffers[i] + blk_offset;
 }

 devsize = mapping->host->i_size >> PAGE_CACHE_SHIFT;


 for (i = 0; i < BLKS_PER_BUF; i++) {
  struct page *page = ((void*)0);

  if (blocknr + i < devsize) {
   page = read_mapping_page_async(mapping, blocknr + i,
         ((void*)0));

   if (IS_ERR(page))
    page = ((void*)0);
  }
  pages[i] = page;
 }

 for (i = 0; i < BLKS_PER_BUF; i++) {
  struct page *page = pages[i];
  if (page) {
   wait_on_page_locked(page);
   if (!PageUptodate(page)) {

    page_cache_release(page);
    pages[i] = ((void*)0);
   }
  }
 }

 buffer = next_buffer;
 next_buffer = NEXT_BUFFER(buffer);
 buffer_blocknr[buffer] = blocknr;
 buffer_dev[buffer] = sb;

 data = read_buffers[buffer];
 for (i = 0; i < BLKS_PER_BUF; i++) {
  struct page *page = pages[i];
  if (page) {
   memcpy(data, kmap(page), PAGE_CACHE_SIZE);
   kunmap(page);
   page_cache_release(page);
  } else
   memset(data, 0, PAGE_CACHE_SIZE);
  data += PAGE_CACHE_SIZE;
 }
 return read_buffers[buffer] + offset;
}
