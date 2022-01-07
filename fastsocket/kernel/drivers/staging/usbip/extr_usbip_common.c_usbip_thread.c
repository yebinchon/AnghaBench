
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_task {int thread_done; int * thread; int (* loop_ops ) (struct usbip_task*) ;int name; } ;


 int EINVAL ;
 int SIGKILL ;
 int allow_signal (int ) ;
 int complete (int *) ;
 int complete_and_exit (int *,int ) ;
 int * current ;
 int daemonize (int ) ;
 int lock_kernel () ;
 int stub1 (struct usbip_task*) ;
 int unlock_kernel () ;

int usbip_thread(void *param)
{
 struct usbip_task *ut = param;

 if (!ut)
  return -EINVAL;

 lock_kernel();
 daemonize(ut->name);
 allow_signal(SIGKILL);
 ut->thread = current;
 unlock_kernel();


 complete(&ut->thread_done);


 ut->loop_ops(ut);


 ut->thread = ((void*)0);

 complete_and_exit(&ut->thread_done, 0);
}
