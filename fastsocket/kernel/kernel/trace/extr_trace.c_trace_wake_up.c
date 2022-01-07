
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_ITER_BLOCK ;
 int get_cpu () ;
 int put_cpu () ;
 int runqueue_is_locked (int) ;
 int trace_flags ;
 int trace_wait ;
 int wake_up (int *) ;

void trace_wake_up(void)
{
 int cpu;

 if (trace_flags & TRACE_ITER_BLOCK)
  return;




 cpu = get_cpu();
 if (!runqueue_is_locked(cpu))
  wake_up(&trace_wait);
 put_cpu();
}
