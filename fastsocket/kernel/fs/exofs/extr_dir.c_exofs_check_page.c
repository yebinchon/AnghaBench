
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {unsigned int index; TYPE_1__* mapping; } ;
struct inode {unsigned int i_size; int i_ino; } ;
struct exofs_dir_entry {int name_len; int inode_no; int rec_len; } ;
struct TYPE_2__ {struct inode* host; } ;


 unsigned int EXOFS_DIR_REC_LEN (int) ;
 int EXOFS_ERR (char*,int ,...) ;
 unsigned int PAGE_CACHE_MASK ;
 unsigned int PAGE_CACHE_SHIFT ;
 unsigned int PAGE_CACHE_SIZE ;
 int SetPageChecked (struct page*) ;
 int SetPageError (struct page*) ;
 int _LLU (int ) ;
 unsigned int exofs_chunk_size (struct inode*) ;
 unsigned int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 char* page_address (struct page*) ;

__attribute__((used)) static void exofs_check_page(struct page *page)
{
 struct inode *dir = page->mapping->host;
 unsigned chunk_size = exofs_chunk_size(dir);
 char *kaddr = page_address(page);
 unsigned offs, rec_len;
 unsigned limit = PAGE_CACHE_SIZE;
 struct exofs_dir_entry *p;
 char *error;


 if ((dir->i_size >> PAGE_CACHE_SHIFT) == page->index) {
  limit = dir->i_size & ~PAGE_CACHE_MASK;
  if (limit & (chunk_size - 1))
   goto Ebadsize;
  if (!limit)
   goto out;
 }
 for (offs = 0; offs <= limit - EXOFS_DIR_REC_LEN(1); offs += rec_len) {
  p = (struct exofs_dir_entry *)(kaddr + offs);
  rec_len = le16_to_cpu(p->rec_len);

  if (rec_len < EXOFS_DIR_REC_LEN(1))
   goto Eshort;
  if (rec_len & 3)
   goto Ealign;
  if (rec_len < EXOFS_DIR_REC_LEN(p->name_len))
   goto Enamelen;
  if (((offs + rec_len - 1) ^ offs) & ~(chunk_size-1))
   goto Espan;
 }
 if (offs != limit)
  goto Eend;
out:
 SetPageChecked(page);
 return;

Ebadsize:
 EXOFS_ERR("ERROR [exofs_check_page]: "
  "size of directory #%lu is not a multiple of chunk size",
  dir->i_ino
 );
 goto fail;
Eshort:
 error = "rec_len is smaller than minimal";
 goto bad_entry;
Ealign:
 error = "unaligned directory entry";
 goto bad_entry;
Enamelen:
 error = "rec_len is too small for name_len";
 goto bad_entry;
Espan:
 error = "directory entry across blocks";
 goto bad_entry;
bad_entry:
 EXOFS_ERR(
  "ERROR [exofs_check_page]: bad entry in directory #%lu: %s - "
  "offset=%lu, inode=%llu, rec_len=%d, name_len=%d",
  dir->i_ino, error, (page->index<<PAGE_CACHE_SHIFT)+offs,
  _LLU(le64_to_cpu(p->inode_no)),
  rec_len, p->name_len);
 goto fail;
Eend:
 p = (struct exofs_dir_entry *)(kaddr + offs);
 EXOFS_ERR("ERROR [exofs_check_page]: "
  "entry in directory #%lu spans the page boundary"
  "offset=%lu, inode=%llu",
  dir->i_ino, (page->index<<PAGE_CACHE_SHIFT)+offs,
  _LLU(le64_to_cpu(p->inode_no)));
fail:
 SetPageChecked(page);
 SetPageError(page);
}
