
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;



unsigned long dummy_get_unmapped_area(struct file *file, unsigned long addr,
          unsigned long len, unsigned long pgoff,
          unsigned long flags)
{
 return 0;
}
