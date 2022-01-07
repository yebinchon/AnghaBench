
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_mem_dqinfo {int dummy; } ;
struct dquot {int dq_type; int dq_id; int dq_sb; } ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 int dquot_acquire (struct dquot*) ;
 int mlog_entry (char*,int ,int ) ;
 int mlog_exit (int) ;
 int ocfs2_lock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 int ocfs2_unlock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 TYPE_1__* sb_dqinfo (int ,int ) ;

__attribute__((used)) static int ocfs2_acquire_dquot(struct dquot *dquot)
{
 struct ocfs2_mem_dqinfo *oinfo =
   sb_dqinfo(dquot->dq_sb, dquot->dq_type)->dqi_priv;
 int status = 0;

 mlog_entry("id=%u, type=%d", dquot->dq_id, dquot->dq_type);


 status = ocfs2_lock_global_qf(oinfo, 1);
 if (status < 0)
  goto out;
 status = dquot_acquire(dquot);
 ocfs2_unlock_global_qf(oinfo, 1);
out:
 mlog_exit(status);
 return status;
}
