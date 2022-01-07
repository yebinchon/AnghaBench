
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
typedef scalar_t__ loff_t ;


 unsigned long PAGE_CACHE_SHIFT ;
 scalar_t__ PAGE_CACHE_SIZE ;

__attribute__((used)) static unsigned exofs_last_byte(struct inode *inode, unsigned long page_nr)
{
 loff_t last_byte = inode->i_size;

 last_byte -= page_nr << PAGE_CACHE_SHIFT;
 if (last_byte > PAGE_CACHE_SIZE)
  last_byte = PAGE_CACHE_SIZE;
 return last_byte;
}
