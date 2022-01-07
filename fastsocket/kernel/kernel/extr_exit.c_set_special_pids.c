
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 int __set_special_pids (struct pid*) ;
 int tasklist_lock ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void set_special_pids(struct pid *pid)
{
 write_lock_irq(&tasklist_lock);
 __set_special_pids(pid);
 write_unlock_irq(&tasklist_lock);
}
