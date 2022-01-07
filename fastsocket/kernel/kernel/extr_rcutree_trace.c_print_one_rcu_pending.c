
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rcu_data {int n_rp_need_nothing; int n_rp_need_fqs; int n_rp_gp_started; int n_rp_gp_completed; int n_rp_cpu_needs_gp; int n_rp_cb_ready; int n_rp_qs_pending; int n_rcu_pending; int cpu; } ;


 scalar_t__ cpu_is_offline (int ) ;
 int seq_printf (struct seq_file*,char*,int ,char,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void print_one_rcu_pending(struct seq_file *m, struct rcu_data *rdp)
{
 seq_printf(m, "%3d%cnp=%ld "
     "qsp=%ld cbr=%ld cng=%ld gpc=%ld gps=%ld nf=%ld nn=%ld\n",
     rdp->cpu,
     cpu_is_offline(rdp->cpu) ? '!' : ' ',
     rdp->n_rcu_pending,
     rdp->n_rp_qs_pending,
     rdp->n_rp_cb_ready,
     rdp->n_rp_cpu_needs_gp,
     rdp->n_rp_gp_completed,
     rdp->n_rp_gp_started,
     rdp->n_rp_need_fqs,
     rdp->n_rp_need_nothing);
}
