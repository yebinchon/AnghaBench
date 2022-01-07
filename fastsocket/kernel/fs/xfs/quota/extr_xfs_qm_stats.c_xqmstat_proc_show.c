
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int xs_qm_dqinact_reclaims; int xs_qm_dqshake_reclaims; int xs_qm_dqwants; int xs_qm_dqcachehits; int xs_qm_dqcachemisses; int xs_qm_dquot_dups; int xs_qm_dqreclaim_misses; int xs_qm_dqreclaims; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__ xqmstats ;

__attribute__((used)) static int xqmstat_proc_show(struct seq_file *m, void *v)
{

 seq_printf(m, "qm %u %u %u %u %u %u %u %u\n",
   xqmstats.xs_qm_dqreclaims,
   xqmstats.xs_qm_dqreclaim_misses,
   xqmstats.xs_qm_dquot_dups,
   xqmstats.xs_qm_dqcachemisses,
   xqmstats.xs_qm_dqcachehits,
   xqmstats.xs_qm_dqwants,
   xqmstats.xs_qm_dqshake_reclaims,
   xqmstats.xs_qm_dqinact_reclaims);
 return 0;
}
