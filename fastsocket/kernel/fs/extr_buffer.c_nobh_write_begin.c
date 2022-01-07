
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {TYPE_1__* host; } ;
typedef unsigned int loff_t ;
typedef int get_block_t ;
struct TYPE_2__ {unsigned int i_size; } ;


 int nobh_write_begin_newtrunc (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**,int *) ;
 scalar_t__ unlikely (int) ;
 int vmtruncate (TYPE_1__*,unsigned int) ;

int nobh_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata,
   get_block_t *get_block)
{
 int ret;

 ret = nobh_write_begin_newtrunc(file, mapping, pos, len, flags,
     pagep, fsdata, get_block);






 if (unlikely(ret)) {
  loff_t isize = mapping->host->i_size;
  if (pos + len > isize)
   vmtruncate(mapping->host, isize);
 }

 return ret;
}
