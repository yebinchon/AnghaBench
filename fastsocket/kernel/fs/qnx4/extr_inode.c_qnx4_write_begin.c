
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qnx4_inode_info {int mmu_private; } ;
struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int host; } ;
typedef int loff_t ;


 int cont_write_begin (struct file*,struct address_space*,int ,unsigned int,unsigned int,struct page**,void**,int ,int *) ;
 int qnx4_get_block ;
 struct qnx4_inode_info* qnx4_i (int ) ;

__attribute__((used)) static int qnx4_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 struct qnx4_inode_info *qnx4_inode = qnx4_i(mapping->host);
 *pagep = ((void*)0);
 return cont_write_begin(file, mapping, pos, len, flags, pagep, fsdata,
    qnx4_get_block,
    &qnx4_inode->mmu_private);
}
