
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_task {char* name; void (* loop_ops ) (struct usbip_task*) ;int thread_done; int * thread; } ;


 int init_completion (int *) ;

void usbip_task_init(struct usbip_task *ut, char *name,
  void (*loop_ops)(struct usbip_task *))
{
 ut->thread = ((void*)0);
 init_completion(&ut->thread_done);
 ut->name = name;
 ut->loop_ops = loop_ops;
}
