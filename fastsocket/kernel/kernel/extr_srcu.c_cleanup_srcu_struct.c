
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int * per_cpu_ref; } ;


 int WARN_ON (int) ;
 int free_percpu (int *) ;
 int srcu_readers_active (struct srcu_struct*) ;

void cleanup_srcu_struct(struct srcu_struct *sp)
{
 int sum;

 sum = srcu_readers_active(sp);
 WARN_ON(sum);
 if (sum != 0)
  return;
 free_percpu(sp->per_cpu_ref);
 sp->per_cpu_ref = ((void*)0);
}
