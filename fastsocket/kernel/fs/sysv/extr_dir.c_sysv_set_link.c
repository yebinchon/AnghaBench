
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_dir_entry {int inode; } ;
struct page {struct address_space* mapping; } ;
struct inode {int i_ctime; int i_mtime; int i_ino; int i_sb; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;


 int AOP_FLAG_UNINTERRUPTIBLE ;
 int BUG_ON (int) ;
 int CURRENT_TIME_SEC ;
 int SYSV_DIRSIZE ;
 int SYSV_SB (int ) ;
 int __sysv_write_begin (int *,struct address_space*,int,int ,int ,struct page**,int *) ;
 int cpu_to_fs16 (int ,int ) ;
 int dir_commit_chunk (struct page*,int,int ) ;
 int dir_put_page (struct page*) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;

void sysv_set_link(struct sysv_dir_entry *de, struct page *page,
 struct inode *inode)
{
 struct address_space *mapping = page->mapping;
 struct inode *dir = mapping->host;
 loff_t pos = page_offset(page) +
   (char *)de-(char*)page_address(page);
 int err;

 lock_page(page);
 err = __sysv_write_begin(((void*)0), mapping, pos, SYSV_DIRSIZE,
    AOP_FLAG_UNINTERRUPTIBLE, &page, ((void*)0));
 BUG_ON(err);
 de->inode = cpu_to_fs16(SYSV_SB(inode->i_sb), inode->i_ino);
 err = dir_commit_chunk(page, pos, SYSV_DIRSIZE);
 dir_put_page(page);
 dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(dir);
}
