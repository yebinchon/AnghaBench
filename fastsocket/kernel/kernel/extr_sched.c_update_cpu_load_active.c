
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int calc_load_update; } ;


 scalar_t__ LOAD_FREQ ;
 int calc_load_account_active (struct rq*) ;
 int jiffies ;
 scalar_t__ time_after_eq (int ,int ) ;
 int update_cpu_load (struct rq*) ;

__attribute__((used)) static void update_cpu_load_active(struct rq *this_rq)
{
 update_cpu_load(this_rq);

 if (time_after_eq(jiffies, this_rq->calc_load_update)) {
  this_rq->calc_load_update += LOAD_FREQ;
  calc_load_account_active(this_rq);
 }
}
