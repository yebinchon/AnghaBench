
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int qm_dqfrlist_cnt; int qm_dqfree_ratio; int qm_totaldquots; } ;


 int atomic_read (int *) ;
 int ndquot ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;
 TYPE_1__* xfs_Gqm ;

__attribute__((used)) static int xqm_proc_show(struct seq_file *m, void *v)
{

 seq_printf(m, "%d\t%d\t%d\t%u\n",
   ndquot,
   xfs_Gqm? atomic_read(&xfs_Gqm->qm_totaldquots) : 0,
   xfs_Gqm? xfs_Gqm->qm_dqfree_ratio : 0,
   xfs_Gqm? xfs_Gqm->qm_dqfrlist_cnt : 0);
 return 0;
}
