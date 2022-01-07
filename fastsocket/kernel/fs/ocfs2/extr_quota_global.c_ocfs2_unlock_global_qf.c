
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mem_dqinfo {int * dqi_gqi_bh; int dqi_gqi_count; int dqi_gqinode; } ;


 int brelse (int *) ;
 int dq_data_lock ;
 int ocfs2_inode_unlock (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ocfs2_unlock_global_qf(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
 ocfs2_inode_unlock(oinfo->dqi_gqinode, ex);
 brelse(oinfo->dqi_gqi_bh);
 spin_lock(&dq_data_lock);
 if (!--oinfo->dqi_gqi_count)
  oinfo->dqi_gqi_bh = ((void*)0);
 spin_unlock(&dq_data_lock);
}
