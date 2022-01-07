
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct held_lock {int dummy; } ;



__attribute__((used)) static inline int separate_irq_context(struct task_struct *curr,
  struct held_lock *hlock)
{
 return 0;
}
