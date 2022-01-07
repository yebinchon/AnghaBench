
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mm_struct {unsigned long total_vm; } ;
struct TYPE_6__ {TYPE_2__* signal; } ;
struct TYPE_5__ {TYPE_1__* rlim; } ;
struct TYPE_4__ {unsigned long rlim_cur; } ;


 unsigned long PAGE_SHIFT ;
 size_t RLIMIT_AS ;
 TYPE_3__* current ;

int may_expand_vm(struct mm_struct *mm, unsigned long npages)
{
 unsigned long cur = mm->total_vm;
 unsigned long lim;

 lim = current->signal->rlim[RLIMIT_AS].rlim_cur >> PAGE_SHIFT;

 if (cur + npages > lim)
  return 0;
 return 1;
}
