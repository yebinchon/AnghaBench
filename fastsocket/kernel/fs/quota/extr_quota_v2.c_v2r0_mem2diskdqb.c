
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v2r0_disk_dqblk {void* dqb_itime; void* dqb_id; void* dqb_btime; void* dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; } ;
struct qtree_mem_dqinfo {int dummy; } ;
struct mem_dqblk {int dqb_itime; int dqb_curspace; int dqb_btime; int dqb_bsoftlimit; int dqb_bhardlimit; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; } ;
struct dquot {int dq_id; int dq_type; int dq_sb; struct mem_dqblk dq_dqb; } ;
struct TYPE_2__ {struct qtree_mem_dqinfo* dqi_priv; } ;


 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int) ;
 scalar_t__ qtree_entry_unused (struct qtree_mem_dqinfo*,void*) ;
 TYPE_1__* sb_dqinfo (int ,int ) ;
 int v2_stoqb (int ) ;

__attribute__((used)) static void v2r0_mem2diskdqb(void *dp, struct dquot *dquot)
{
 struct v2r0_disk_dqblk *d = dp;
 struct mem_dqblk *m = &dquot->dq_dqb;
 struct qtree_mem_dqinfo *info =
   sb_dqinfo(dquot->dq_sb, dquot->dq_type)->dqi_priv;

 d->dqb_ihardlimit = cpu_to_le32(m->dqb_ihardlimit);
 d->dqb_isoftlimit = cpu_to_le32(m->dqb_isoftlimit);
 d->dqb_curinodes = cpu_to_le32(m->dqb_curinodes);
 d->dqb_itime = cpu_to_le64(m->dqb_itime);
 d->dqb_bhardlimit = cpu_to_le32(v2_stoqb(m->dqb_bhardlimit));
 d->dqb_bsoftlimit = cpu_to_le32(v2_stoqb(m->dqb_bsoftlimit));
 d->dqb_curspace = cpu_to_le64(m->dqb_curspace);
 d->dqb_btime = cpu_to_le64(m->dqb_btime);
 d->dqb_id = cpu_to_le32(dquot->dq_id);
 if (qtree_entry_unused(info, dp))
  d->dqb_itime = cpu_to_le64(1);
}
