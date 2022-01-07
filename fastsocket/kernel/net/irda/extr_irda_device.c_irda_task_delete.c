
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irda_task {int dummy; } ;


 int __irda_task_delete (struct irda_task*) ;
 int hashbin_remove (int ,long,int *) ;
 int tasks ;

__attribute__((used)) static void irda_task_delete(struct irda_task *task)
{

 hashbin_remove(tasks, (long) task, ((void*)0));

 __irda_task_delete(task);
}
