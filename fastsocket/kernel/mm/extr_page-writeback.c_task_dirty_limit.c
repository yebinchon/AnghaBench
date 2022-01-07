
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u64 ;
struct task_struct {int dummy; } ;


 int do_div (long,long) ;
 int task_dirties_fraction (struct task_struct*,long*,long*) ;

__attribute__((used)) static void task_dirty_limit(struct task_struct *tsk, unsigned long *pdirty)
{
 long numerator, denominator;
 unsigned long dirty = *pdirty;
 u64 inv = dirty >> 3;

 task_dirties_fraction(tsk, &numerator, &denominator);
 inv *= numerator;
 do_div(inv, denominator);

 dirty -= inv;
 if (dirty < *pdirty/2)
  dirty = *pdirty/2;

 *pdirty = dirty;
}
