
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_dir_entry {scalar_t__ inode; } ;
struct page {struct address_space* mapping; } ;
struct inode {int i_mtime; int i_ctime; } ;
struct address_space {scalar_t__ host; } ;
typedef int loff_t ;


 int AOP_FLAG_UNINTERRUPTIBLE ;
 int BUG_ON (int) ;
 int CURRENT_TIME_SEC ;
 int SYSV_DIRSIZE ;
 int __sysv_write_begin (int *,struct address_space*,int,int ,int ,struct page**,int *) ;
 int dir_commit_chunk (struct page*,int,int ) ;
 int dir_put_page (struct page*) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;

int sysv_delete_entry(struct sysv_dir_entry *de, struct page *page)
{
 struct address_space *mapping = page->mapping;
 struct inode *inode = (struct inode*)mapping->host;
 char *kaddr = (char*)page_address(page);
 loff_t pos = page_offset(page) + (char *)de - kaddr;
 int err;

 lock_page(page);
 err = __sysv_write_begin(((void*)0), mapping, pos, SYSV_DIRSIZE,
    AOP_FLAG_UNINTERRUPTIBLE, &page, ((void*)0));
 BUG_ON(err);
 de->inode = 0;
 err = dir_commit_chunk(page, pos, SYSV_DIRSIZE);
 dir_put_page(page);
 inode->i_ctime = inode->i_mtime = CURRENT_TIME_SEC;
 mark_inode_dirty(inode);
 return err;
}
