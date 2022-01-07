
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int key_garbage_collector (struct work_struct*) ;
 int key_gc_work ;
 int key_need_gc ;
 int schedule_work (int *) ;
 int smp_mb () ;
 scalar_t__ xchg (unsigned long*,int) ;

__attribute__((used)) static void key_garbage_collector_nonreentrant(struct work_struct *work)
{
 static unsigned long running;

 if (!key_need_gc)
  return;

 if (xchg(&running, 1) == 0) {
  key_need_gc = 0;
  smp_mb();
  key_garbage_collector(work);

  running = 0;
  if (key_need_gc)
   schedule_work(&key_gc_work);
 }
}
