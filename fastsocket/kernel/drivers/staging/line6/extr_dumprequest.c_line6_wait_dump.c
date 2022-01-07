
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct line6_dump_request {int wait; scalar_t__ in_progress; } ;
struct TYPE_4__ {int state; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_1__*) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 TYPE_1__* current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 scalar_t__ signal_pending (TYPE_1__*) ;
 int wait ;

int line6_wait_dump(struct line6_dump_request *l6dr, int nonblock)
{
 int retval = 0;
 DECLARE_WAITQUEUE(wait, current);
 add_wait_queue(&l6dr->wait, &wait);
 current->state = TASK_INTERRUPTIBLE;

 while (l6dr->in_progress) {
  if (nonblock) {
   retval = -EAGAIN;
   break;
  }

  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  } else
   schedule();
 }

 current->state = TASK_RUNNING;
 remove_wait_queue(&l6dr->wait, &wait);
 return retval;
}
