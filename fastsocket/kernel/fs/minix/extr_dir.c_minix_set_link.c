
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct minix_sb_info {scalar_t__ s_version; int s_dirsize; } ;
struct minix_dir_entry {int inode; } ;
struct inode {int i_ctime; int i_mtime; int i_ino; int i_sb; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int inode; } ;
typedef TYPE_1__ minix3_dirent ;
typedef int loff_t ;


 int AOP_FLAG_UNINTERRUPTIBLE ;
 int CURRENT_TIME_SEC ;
 scalar_t__ MINIX_V3 ;
 int __minix_write_begin (int *,struct address_space*,int,int ,int ,struct page**,int *) ;
 int dir_commit_chunk (struct page*,int,int ) ;
 int dir_put_page (struct page*) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 struct minix_sb_info* minix_sb (int ) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;
 int unlock_page (struct page*) ;

void minix_set_link(struct minix_dir_entry *de, struct page *page,
 struct inode *inode)
{
 struct address_space *mapping = page->mapping;
 struct inode *dir = mapping->host;
 struct minix_sb_info *sbi = minix_sb(dir->i_sb);
 loff_t pos = page_offset(page) +
   (char *)de-(char*)page_address(page);
 int err;

 lock_page(page);

 err = __minix_write_begin(((void*)0), mapping, pos, sbi->s_dirsize,
     AOP_FLAG_UNINTERRUPTIBLE, &page, ((void*)0));
 if (err == 0) {
  if (sbi->s_version == MINIX_V3)
   ((minix3_dirent *) de)->inode = inode->i_ino;
  else
   de->inode = inode->i_ino;
  err = dir_commit_chunk(page, pos, sbi->s_dirsize);
 } else {
  unlock_page(page);
 }
 dir_put_page(page);
 dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(dir);
}
