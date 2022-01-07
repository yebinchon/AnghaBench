
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;
struct inode {int i_ctime; int i_mtime; int i_ino; } ;
struct exofs_dir_entry {int inode_no; int rec_len; } ;
typedef int loff_t ;


 int AOP_FLAG_UNINTERRUPTIBLE ;
 int CURRENT_TIME ;
 int EXOFS_ERR (char*,int) ;
 int cpu_to_le64 (int ) ;
 int exofs_commit_chunk (struct page*,int,unsigned int) ;
 int exofs_put_page (struct page*) ;
 int exofs_set_de_type (struct exofs_dir_entry*,struct inode*) ;
 int exofs_write_begin (int *,int ,int,unsigned int,int ,struct page**,int *) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;

int exofs_set_link(struct inode *dir, struct exofs_dir_entry *de,
   struct page *page, struct inode *inode)
{
 loff_t pos = page_offset(page) +
   (char *) de - (char *) page_address(page);
 unsigned len = le16_to_cpu(de->rec_len);
 int err;

 lock_page(page);
 err = exofs_write_begin(((void*)0), page->mapping, pos, len,
    AOP_FLAG_UNINTERRUPTIBLE, &page, ((void*)0));
 if (err)
  EXOFS_ERR("exofs_set_link: exofs_write_begin FAILD => %d\n",
     err);

 de->inode_no = cpu_to_le64(inode->i_ino);
 exofs_set_de_type(de, inode);
 if (likely(!err))
  err = exofs_commit_chunk(page, pos, len);
 exofs_put_page(page);
 dir->i_mtime = dir->i_ctime = CURRENT_TIME;
 mark_inode_dirty(dir);
 return err;
}
