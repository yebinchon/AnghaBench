
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;


 int block_write_begin (struct file*,struct address_space*,int ,unsigned int,unsigned int,struct page**,void**,int ) ;
 int nilfs_get_block ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_write_begin(struct file *file, struct address_space *mapping,
        loff_t pos, unsigned len, unsigned flags,
        struct page **pagep, void **fsdata)

{
 struct inode *inode = mapping->host;
 int err = nilfs_transaction_begin(inode->i_sb, ((void*)0), 1);

 if (unlikely(err))
  return err;

 *pagep = ((void*)0);
 err = block_write_begin(file, mapping, pos, len, flags, pagep,
    fsdata, nilfs_get_block);
 if (unlikely(err))
  nilfs_transaction_abort(inode->i_sb);
 return err;
}
