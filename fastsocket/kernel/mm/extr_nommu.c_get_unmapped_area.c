
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {TYPE_2__* f_op; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {unsigned long (* get_unmapped_area ) (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;} ;
struct TYPE_4__ {unsigned long (* get_unmapped_area ) (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;} ;


 unsigned long ENOSYS ;
 TYPE_3__* current ;

unsigned long get_unmapped_area(struct file *file, unsigned long addr,
    unsigned long len, unsigned long pgoff,
    unsigned long flags)
{
 unsigned long (*get_area)(struct file *, unsigned long, unsigned long,
      unsigned long, unsigned long);

 get_area = current->mm->get_unmapped_area;
 if (file && file->f_op && file->f_op->get_unmapped_area)
  get_area = file->f_op->get_unmapped_area;

 if (!get_area)
  return -ENOSYS;

 return get_area(file, addr, len, pgoff, flags);
}
