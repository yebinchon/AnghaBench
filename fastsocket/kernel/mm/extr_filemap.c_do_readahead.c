
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int ssize_t ;
typedef int pgoff_t ;
struct TYPE_2__ {int readpage; } ;


 int EINVAL ;
 int force_page_cache_readahead (struct address_space*,struct file*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
do_readahead(struct address_space *mapping, struct file *filp,
      pgoff_t index, unsigned long nr)
{
 if (!mapping || !mapping->a_ops || !mapping->a_ops->readpage)
  return -EINVAL;

 force_page_cache_readahead(mapping, filp, index, nr);
 return 0;
}
