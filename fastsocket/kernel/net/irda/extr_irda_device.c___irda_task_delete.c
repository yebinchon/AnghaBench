
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irda_task {int timer; } ;


 int del_timer (int *) ;
 int kfree (struct irda_task*) ;

__attribute__((used)) static void __irda_task_delete(struct irda_task *task)
{
 del_timer(&task->timer);

 kfree(task);
}
