
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dirties; } ;


 int prop_fraction_single (int *,int *,long*,long*) ;
 int vm_dirties ;

__attribute__((used)) static inline void task_dirties_fraction(struct task_struct *tsk,
  long *numerator, long *denominator)
{
 prop_fraction_single(&vm_dirties, &tsk->dirties,
    numerator, denominator);
}
