
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;


 int NILFS_SB (int ) ;
 int PAGE_CACHE_SIZE ;
 unsigned int generic_write_end (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ;
 unsigned int nilfs_page_count_clean_buffers (struct page*,unsigned int,unsigned int) ;
 int nilfs_set_file_dirty (int ,struct inode*,unsigned int) ;
 int nilfs_transaction_commit (int ) ;

__attribute__((used)) static int nilfs_write_end(struct file *file, struct address_space *mapping,
      loff_t pos, unsigned len, unsigned copied,
      struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;
 unsigned start = pos & (PAGE_CACHE_SIZE - 1);
 unsigned nr_dirty;
 int err;

 nr_dirty = nilfs_page_count_clean_buffers(page, start,
        start + copied);
 copied = generic_write_end(file, mapping, pos, len, copied, page,
       fsdata);
 nilfs_set_file_dirty(NILFS_SB(inode->i_sb), inode, nr_dirty);
 err = nilfs_transaction_commit(inode->i_sb);
 return err ? : copied;
}
