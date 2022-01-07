
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int writepage; } ;


 int __writepage ;
 int write_cache_pages (struct address_space*,struct writeback_control*,int ,struct address_space*) ;

int generic_writepages(struct address_space *mapping,
         struct writeback_control *wbc)
{

 if (!mapping->a_ops->writepage)
  return 0;

 return write_cache_pages(mapping, wbc, __writepage, mapping);
}
