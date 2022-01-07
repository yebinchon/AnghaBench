
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int ClearPageUptodate (struct page*) ;
 int OFFSET (struct inode*) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ cramfs_read (struct super_block*,int,int) ;
 int cramfs_uncompress_block (void*,int,scalar_t__,int) ;
 int flush_dcache_page (struct page*) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (void*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int read_mutex ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int cramfs_readpage(struct file *file, struct page * page)
{
 struct inode *inode = page->mapping->host;
 u32 maxblock;
 int bytes_filled;
 void *pgdata;

 maxblock = (inode->i_size + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
 bytes_filled = 0;
 pgdata = kmap(page);

 if (page->index < maxblock) {
  struct super_block *sb = inode->i_sb;
  u32 blkptr_offset = OFFSET(inode) + page->index*4;
  u32 start_offset, compr_len;

  start_offset = OFFSET(inode) + maxblock*4;
  mutex_lock(&read_mutex);
  if (page->index)
   start_offset = *(u32 *) cramfs_read(sb, blkptr_offset-4,
    4);
  compr_len = (*(u32 *) cramfs_read(sb, blkptr_offset, 4) -
   start_offset);
  mutex_unlock(&read_mutex);

  if (compr_len == 0)
   ;
  else if (unlikely(compr_len > (PAGE_CACHE_SIZE << 1))) {
   pr_err("cramfs: bad compressed blocksize %u\n",
    compr_len);
   goto err;
  } else {
   mutex_lock(&read_mutex);
   bytes_filled = cramfs_uncompress_block(pgdata,
     PAGE_CACHE_SIZE,
     cramfs_read(sb, start_offset, compr_len),
     compr_len);
   mutex_unlock(&read_mutex);
   if (unlikely(bytes_filled < 0))
    goto err;
  }
 }

 memset(pgdata + bytes_filled, 0, PAGE_CACHE_SIZE - bytes_filled);
 flush_dcache_page(page);
 kunmap(page);
 SetPageUptodate(page);
 unlock_page(page);
 return 0;

err:
 kunmap(page);
 ClearPageUptodate(page);
 SetPageError(page);
 unlock_page(page);
 return 0;
}
