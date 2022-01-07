
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct nilfs_dir_entry {int inode; int rec_len; } ;
struct inode {int i_ctime; int i_mtime; int i_ino; } ;
struct address_space {int dummy; } ;


 int BUG_ON (int) ;
 int CURRENT_TIME ;
 int cpu_to_le64 (int ) ;
 unsigned int le16_to_cpu (int ) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 int nilfs_commit_chunk (struct page*,struct address_space*,unsigned int,unsigned int) ;
 int nilfs_prepare_chunk_uninterruptible (struct page*,struct address_space*,unsigned int,unsigned int) ;
 int nilfs_put_page (struct page*) ;
 int nilfs_set_de_type (struct nilfs_dir_entry*,struct inode*) ;
 scalar_t__ page_address (struct page*) ;

void nilfs_set_link(struct inode *dir, struct nilfs_dir_entry *de,
      struct page *page, struct inode *inode)
{
 unsigned from = (char *) de - (char *) page_address(page);
 unsigned to = from + le16_to_cpu(de->rec_len);
 struct address_space *mapping = page->mapping;
 int err;

 lock_page(page);
 err = nilfs_prepare_chunk_uninterruptible(page, mapping, from, to);
 BUG_ON(err);
 de->inode = cpu_to_le64(inode->i_ino);
 nilfs_set_de_type(de, inode);
 err = nilfs_commit_chunk(page, mapping, from, to);
 nilfs_put_page(page);
 dir->i_mtime = dir->i_ctime = CURRENT_TIME;

 mark_inode_dirty(dir);
}
