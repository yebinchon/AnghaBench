
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mem_dqinfo {struct buffer_head* dqi_gqi_bh; int dqi_gqi_count; int dqi_gqinode; } ;
struct buffer_head {int dummy; } ;


 int WARN_ON (int) ;
 int dq_data_lock ;
 int ocfs2_inode_lock (int ,struct buffer_head**,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_lock_global_qf(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
 int status;
 struct buffer_head *bh = ((void*)0);

 status = ocfs2_inode_lock(oinfo->dqi_gqinode, &bh, ex);
 if (status < 0)
  return status;
 spin_lock(&dq_data_lock);
 if (!oinfo->dqi_gqi_count++)
  oinfo->dqi_gqi_bh = bh;
 else
  WARN_ON(bh != oinfo->dqi_gqi_bh);
 spin_unlock(&dq_data_lock);
 return 0;
}
