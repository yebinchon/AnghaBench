
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct rcu_data {int blimit; int qlen; int resched_ipi; int offline_fqs; int dynticks_fqs; TYPE_1__* dynticks; int qs_pending; int passed_quiesc_completed; int passed_quiesc; int gpnum; int completed; int cpu; int beenonline; } ;
struct TYPE_2__ {int dynticks_nmi; int dynticks_nesting; int dynticks; } ;


 scalar_t__ cpu_is_offline (int ) ;
 int seq_printf (struct seq_file*,char*,int ,char,...) ;

__attribute__((used)) static void print_one_rcu_data(struct seq_file *m, struct rcu_data *rdp)
{
 if (!rdp->beenonline)
  return;
 seq_printf(m, "%3d%cc=%ld g=%ld pq=%d pqc=%ld qp=%d",
     rdp->cpu,
     cpu_is_offline(rdp->cpu) ? '!' : ' ',
     rdp->completed, rdp->gpnum,
     rdp->passed_quiesc, rdp->passed_quiesc_completed,
     rdp->qs_pending);







 seq_printf(m, " of=%lu ri=%lu", rdp->offline_fqs, rdp->resched_ipi);
 seq_printf(m, " ql=%ld b=%ld\n", rdp->qlen, rdp->blimit);
}
