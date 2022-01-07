
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfq_sched_data {scalar_t__ perturb_period; int perturb_timer; int perturbation; } ;
struct Qdisc {int dummy; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int net_random () ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void sfq_perturbation(unsigned long arg)
{
 struct Qdisc *sch = (struct Qdisc *)arg;
 struct sfq_sched_data *q = qdisc_priv(sch);

 q->perturbation = net_random();

 if (q->perturb_period)
  mod_timer(&q->perturb_timer, jiffies + q->perturb_period);
}
