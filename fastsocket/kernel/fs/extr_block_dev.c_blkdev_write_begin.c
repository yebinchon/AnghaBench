
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int blkdev_get_block ;
 int block_write_begin (struct file*,struct address_space*,int ,unsigned int,unsigned int,struct page**,void**,int ) ;

__attribute__((used)) static int blkdev_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 *pagep = ((void*)0);
 return block_write_begin(file, mapping, pos, len, flags, pagep, fsdata,
    blkdev_get_block);
}
