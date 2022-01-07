
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int flags; struct reclaim_state* reclaim_state; } ;
struct reclaim_state {int reclaimed_slab; } ;
struct cpumask {int dummy; } ;
struct TYPE_5__ {unsigned long kswapd_max_order; int node_id; int kswapd_wait; } ;
typedef TYPE_1__ pg_data_t ;


 int DEFINE_WAIT (int ) ;
 int GFP_KERNEL ;
 int HZ ;
 int KSWAPD_HIGH_WMARK_HIT_QUICKLY ;
 int KSWAPD_LOW_WMARK_HIT_QUICKLY ;
 int PF_KSWAPD ;
 int PF_MEMALLOC ;
 int PF_SWAPWRITE ;
 int TASK_INTERRUPTIBLE ;
 int balance_pgdat (TYPE_1__*,unsigned long) ;
 int calculate_normal_threshold ;
 int calculate_pressure_threshold ;
 int count_vm_event (int ) ;
 int cpumask_empty (struct cpumask const*) ;
 struct cpumask* cpumask_of_node (int ) ;
 struct task_struct* current ;
 int finish_wait (int *,int *) ;
 int freezing (struct task_struct*) ;
 int lockdep_set_current_reclaim_state (int ) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 long schedule_timeout (int) ;
 int set_cpus_allowed_ptr (struct task_struct*,struct cpumask const*) ;
 int set_freezable () ;
 int set_pgdat_percpu_threshold (TYPE_1__*,int ) ;
 int sleeping_prematurely (TYPE_1__*,unsigned long,long) ;
 int trace_mm_vmscan_kswapd_sleep (int ) ;
 int trace_mm_vmscan_kswapd_wake (int ,unsigned long) ;
 int try_to_freeze () ;
 int wait ;

__attribute__((used)) static int kswapd(void *p)
{
 unsigned long order;
 pg_data_t *pgdat = (pg_data_t*)p;
 struct task_struct *tsk = current;
 DEFINE_WAIT(wait);
 struct reclaim_state reclaim_state = {
  .reclaimed_slab = 0,
 };
 const struct cpumask *cpumask = cpumask_of_node(pgdat->node_id);

 lockdep_set_current_reclaim_state(GFP_KERNEL);

 if (!cpumask_empty(cpumask))
  set_cpus_allowed_ptr(tsk, cpumask);
 current->reclaim_state = &reclaim_state;
 tsk->flags |= PF_MEMALLOC | PF_SWAPWRITE | PF_KSWAPD;
 set_freezable();

 order = 0;
 for ( ; ; ) {
  unsigned long new_order;

  prepare_to_wait(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);
  new_order = pgdat->kswapd_max_order;
  pgdat->kswapd_max_order = 0;
  if (order < new_order) {




   order = new_order;
  } else {
   if (!freezing(current)) {
    long remaining = 0;


    if (!sleeping_prematurely(pgdat, order, remaining)) {
     remaining = schedule_timeout(HZ/10);
     finish_wait(&pgdat->kswapd_wait, &wait);
     prepare_to_wait(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);
    }






    if (!sleeping_prematurely(pgdat, order, remaining)) {
     trace_mm_vmscan_kswapd_sleep(pgdat->node_id);
     set_pgdat_percpu_threshold(pgdat,
      calculate_normal_threshold);

     schedule();
     set_pgdat_percpu_threshold(pgdat,
      calculate_pressure_threshold);
    } else {
     if (remaining)
      count_vm_event(KSWAPD_LOW_WMARK_HIT_QUICKLY);
     else
      count_vm_event(KSWAPD_HIGH_WMARK_HIT_QUICKLY);
    }
   }

   order = pgdat->kswapd_max_order;
  }
  finish_wait(&pgdat->kswapd_wait, &wait);

  if (!try_to_freeze()) {



   trace_mm_vmscan_kswapd_wake(pgdat->node_id, order);
   balance_pgdat(pgdat, order);
  }
 }
 return 0;
}
