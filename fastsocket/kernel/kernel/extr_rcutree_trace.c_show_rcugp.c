
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_6__ {int gpnum; int completed; } ;
struct TYPE_5__ {int gpnum; int completed; } ;
struct TYPE_4__ {int gpnum; int completed; } ;


 TYPE_3__ rcu_bh_state ;
 TYPE_2__ rcu_preempt_state ;
 TYPE_1__ rcu_sched_state ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int show_rcugp(struct seq_file *m, void *unused)
{




 seq_printf(m, "rcu_sched: completed=%ld  gpnum=%ld\n",
     rcu_sched_state.completed, rcu_sched_state.gpnum);
 seq_printf(m, "rcu_bh: completed=%ld  gpnum=%ld\n",
     rcu_bh_state.completed, rcu_bh_state.gpnum);
 return 0;
}
