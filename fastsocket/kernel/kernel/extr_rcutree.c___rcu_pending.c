
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {int jiffies_force_qs; int gpnum; int completed; } ;
struct rcu_data {scalar_t__ completed; scalar_t__ gpnum; int n_rp_need_nothing; int n_rp_need_fqs; int n_rp_gp_started; int n_rp_gp_completed; int n_rp_cpu_needs_gp; int n_rp_cb_ready; int n_rp_qs_pending; scalar_t__ qs_pending; int n_rcu_pending; } ;


 scalar_t__ ACCESS_ONCE (int ) ;
 int check_cpu_stall (struct rcu_state*,struct rcu_data*) ;
 scalar_t__ cpu_has_callbacks_ready_to_invoke (struct rcu_data*) ;
 scalar_t__ cpu_needs_another_gp (struct rcu_state*,struct rcu_data*) ;
 scalar_t__ jiffies ;
 scalar_t__ rcu_gp_in_progress (struct rcu_state*) ;

__attribute__((used)) static int __rcu_pending(struct rcu_state *rsp, struct rcu_data *rdp)
{
 rdp->n_rcu_pending++;


 check_cpu_stall(rsp, rdp);


 if (rdp->qs_pending) {
  rdp->n_rp_qs_pending++;
  return 1;
 }


 if (cpu_has_callbacks_ready_to_invoke(rdp)) {
  rdp->n_rp_cb_ready++;
  return 1;
 }


 if (cpu_needs_another_gp(rsp, rdp)) {
  rdp->n_rp_cpu_needs_gp++;
  return 1;
 }


 if (ACCESS_ONCE(rsp->completed) != rdp->completed) {
  rdp->n_rp_gp_completed++;
  return 1;
 }


 if (ACCESS_ONCE(rsp->gpnum) != rdp->gpnum) {
  rdp->n_rp_gp_started++;
  return 1;
 }


 if (rcu_gp_in_progress(rsp) &&
     ((long)(ACCESS_ONCE(rsp->jiffies_force_qs) - jiffies) < 0)) {
  rdp->n_rp_need_fqs++;
  return 1;
 }


 rdp->n_rp_need_nothing++;
 return 0;
}
