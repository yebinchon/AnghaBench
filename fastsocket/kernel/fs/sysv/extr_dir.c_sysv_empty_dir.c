
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_dir_entry {scalar_t__ inode; char* name; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;


 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PAGE_CACHE_SIZE ;
 scalar_t__ SYSV_DIRSIZE ;
 int SYSV_SB (struct super_block*) ;
 scalar_t__ cpu_to_fs16 (int ,int ) ;
 struct page* dir_get_page (struct inode*,unsigned long) ;
 unsigned long dir_pages (struct inode*) ;
 int dir_put_page (struct page*) ;
 scalar_t__ page_address (struct page*) ;

int sysv_empty_dir(struct inode * inode)
{
 struct super_block *sb = inode->i_sb;
 struct page *page = ((void*)0);
 unsigned long i, npages = dir_pages(inode);

 for (i = 0; i < npages; i++) {
  char *kaddr;
  struct sysv_dir_entry * de;
  page = dir_get_page(inode, i);

  if (IS_ERR(page))
   continue;

  kaddr = (char *)page_address(page);
  de = (struct sysv_dir_entry *)kaddr;
  kaddr += PAGE_CACHE_SIZE-SYSV_DIRSIZE;

  for ( ;(char *)de <= kaddr; de++) {
   if (!de->inode)
    continue;

   if (de->name[0] != '.')
    goto not_empty;
   if (!de->name[1]) {
    if (de->inode == cpu_to_fs16(SYSV_SB(sb),
       inode->i_ino))
     continue;
    goto not_empty;
   }
   if (de->name[1] != '.' || de->name[2])
    goto not_empty;
  }
  dir_put_page(page);
 }
 return 1;

not_empty:
 dir_put_page(page);
 return 0;
}
