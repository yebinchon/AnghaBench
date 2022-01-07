
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int __count; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int free_user (struct user_struct*,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int uidhash_lock ;

void free_uid(struct user_struct *up)
{
 unsigned long flags;

 if (!up)
  return;

 local_irq_save(flags);
 if (atomic_dec_and_lock(&up->__count, &uidhash_lock))
  free_user(up, flags);
 else
  local_irq_restore(flags);
}
