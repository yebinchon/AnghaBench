
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v2r1_disk_dqblk {int dqb_id; } ;
struct qtree_mem_dqinfo {int dummy; } ;
struct dquot {scalar_t__ dq_id; int dq_type; int dq_sb; } ;
struct TYPE_2__ {struct qtree_mem_dqinfo* dqi_priv; } ;


 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ qtree_entry_unused (struct qtree_mem_dqinfo*,void*) ;
 TYPE_1__* sb_dqinfo (int ,int ) ;

__attribute__((used)) static int v2r1_is_id(void *dp, struct dquot *dquot)
{
 struct v2r1_disk_dqblk *d = dp;
 struct qtree_mem_dqinfo *info =
   sb_dqinfo(dquot->dq_sb, dquot->dq_type)->dqi_priv;

 if (qtree_entry_unused(info, dp))
  return 0;
 return le32_to_cpu(d->dqb_id) == dquot->dq_id;
}
