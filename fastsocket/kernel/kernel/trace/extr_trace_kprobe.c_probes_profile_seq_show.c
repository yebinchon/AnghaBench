
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nmissed; } ;
struct TYPE_6__ {TYPE_2__ kp; } ;
struct TYPE_4__ {int name; } ;
struct trace_probe {TYPE_3__ rp; int nhit; TYPE_1__ call; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static int probes_profile_seq_show(struct seq_file *m, void *v)
{
 struct trace_probe *tp = v;

 seq_printf(m, "  %-44s %15lu %15lu\n", tp->call.name, tp->nhit,
     tp->rp.kp.nmissed);

 return 0;
}
