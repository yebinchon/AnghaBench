
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_thread {int dummy; } ;


 int current ;
 int if_lock (struct pktgen_thread*) ;
 int if_unlock (struct pktgen_thread*) ;
 int msleep_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ thread_is_running (struct pktgen_thread*) ;

__attribute__((used)) static int pktgen_wait_thread_run(struct pktgen_thread *t)
{
 if_lock(t);

 while (thread_is_running(t)) {

  if_unlock(t);

  msleep_interruptible(100);

  if (signal_pending(current))
   goto signal;
  if_lock(t);
 }
 if_unlock(t);
 return 1;
signal:
 return 0;
}
