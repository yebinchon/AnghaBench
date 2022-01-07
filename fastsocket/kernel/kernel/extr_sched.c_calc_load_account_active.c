
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {long nr_running; long calc_load_active; scalar_t__ nr_uninterruptible; } ;


 int atomic_long_add (long,int *) ;
 int calc_load_tasks ;

__attribute__((used)) static void calc_load_account_active(struct rq *this_rq)
{
 long nr_active, delta;

 nr_active = this_rq->nr_running;
 nr_active += (long) this_rq->nr_uninterruptible;

 if (nr_active != this_rq->calc_load_active) {
  delta = nr_active - this_rq->calc_load_active;
  this_rq->calc_load_active = nr_active;
  atomic_long_add(delta, &calc_load_tasks);
 }
}
