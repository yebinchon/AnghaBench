
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srcu_struct {int per_cpu_ref; } ;
struct TYPE_2__ {int * c; } ;


 TYPE_1__* per_cpu_ptr (int ,int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;
 int srcu_barrier () ;

void srcu_read_unlock(struct srcu_struct *sp, int idx)
{
 preempt_disable();
 srcu_barrier();
 per_cpu_ptr(sp->per_cpu_ref, smp_processor_id())->c[idx]--;
 preempt_enable();
}
