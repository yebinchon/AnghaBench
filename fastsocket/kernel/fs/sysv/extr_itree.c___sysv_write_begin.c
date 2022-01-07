
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int block_write_begin (struct file*,struct address_space*,int ,unsigned int,unsigned int,struct page**,void**,int ) ;
 int get_block ;

int __sysv_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 return block_write_begin(file, mapping, pos, len, flags, pagep, fsdata,
    get_block);
}
