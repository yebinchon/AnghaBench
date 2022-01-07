
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long weight; } ;
struct rq {unsigned long last_load_update_tick; unsigned long* cpu_load; int nr_load_updates; TYPE_1__ load; } ;


 int CPU_LOAD_IDX_MAX ;
 unsigned long decay_load_missed (unsigned long,unsigned long,int) ;
 unsigned long jiffies ;

__attribute__((used)) static void update_cpu_load(struct rq *this_rq)
{
 unsigned long this_load = this_rq->load.weight;
 unsigned long curr_jiffies = jiffies;
 unsigned long pending_updates;
 int i, scale;

 this_rq->nr_load_updates++;


 if (curr_jiffies == this_rq->last_load_update_tick)
  return;

 pending_updates = curr_jiffies - this_rq->last_load_update_tick;
 this_rq->last_load_update_tick = curr_jiffies;


 this_rq->cpu_load[0] = this_load;
 for (i = 1, scale = 2; i < CPU_LOAD_IDX_MAX; i++, scale += scale) {
  unsigned long old_load, new_load;



  old_load = this_rq->cpu_load[i];
  old_load = decay_load_missed(old_load, pending_updates - 1, i);
  new_load = this_load;





  if (new_load > old_load)
   new_load += scale - 1;

  this_rq->cpu_load[i] = (old_load * (scale - 1) + new_load) >> i;
 }
}
