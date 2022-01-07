
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct readyevents_arg {struct eventpoll* ep; int locked; } ;
struct file {struct eventpoll* private_data; } ;
struct eventpoll {int poll_wait; } ;
struct TYPE_4__ {scalar_t__ qproc; } ;
typedef TYPE_1__ poll_table ;


 int EP_MAX_NESTS ;
 int current ;
 int ep_call_nested (int *,int ,int ,struct readyevents_arg*,struct eventpoll*,int ) ;
 int ep_poll_readyevents_proc ;
 scalar_t__ ep_ptable_queue_proc ;
 int poll_readywalk_ncalls ;
 int poll_wait (struct file*,int *,TYPE_1__*) ;

__attribute__((used)) static unsigned int ep_eventpoll_poll(struct file *file, poll_table *wait)
{
 int pollflags;
 struct eventpoll *ep = file->private_data;
 struct readyevents_arg arg;





 arg.locked = wait && (wait->qproc == ep_ptable_queue_proc);
 arg.ep = ep;


 poll_wait(file, &ep->poll_wait, wait);







 pollflags = ep_call_nested(&poll_readywalk_ncalls, EP_MAX_NESTS,
       ep_poll_readyevents_proc, &arg, ep, current);

 return pollflags != -1 ? pollflags : 0;
}
