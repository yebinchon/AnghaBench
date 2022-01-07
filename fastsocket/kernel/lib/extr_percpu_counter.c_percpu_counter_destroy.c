
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_counter {int * counters; int list; } ;


 int free_percpu (int *) ;
 int list_del (int *) ;
 int percpu_counters_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void percpu_counter_destroy(struct percpu_counter *fbc)
{
 if (!fbc->counters)
  return;






 free_percpu(fbc->counters);
 fbc->counters = ((void*)0);
}
