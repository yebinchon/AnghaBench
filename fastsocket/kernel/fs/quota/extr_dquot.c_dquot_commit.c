
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quota_info {int dqio_mutex; TYPE_1__** ops; } ;
struct dquot {size_t dq_type; int dq_flags; int dq_sb; } ;
struct TYPE_2__ {int (* commit_dqblk ) (struct dquot*) ;} ;


 int DQ_ACTIVE_B ;
 int EIO ;
 int clear_dquot_dirty (struct dquot*) ;
 int dq_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct quota_info* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct dquot*) ;
 scalar_t__ test_bit (int ,int *) ;

int dquot_commit(struct dquot *dquot)
{
 int ret = 0;
 struct quota_info *dqopt = sb_dqopt(dquot->dq_sb);

 mutex_lock(&dqopt->dqio_mutex);
 spin_lock(&dq_list_lock);
 if (!clear_dquot_dirty(dquot)) {
  spin_unlock(&dq_list_lock);
  goto out_sem;
 }
 spin_unlock(&dq_list_lock);


 if (test_bit(DQ_ACTIVE_B, &dquot->dq_flags))
  ret = dqopt->ops[dquot->dq_type]->commit_dqblk(dquot);
 else
  ret = -EIO;
out_sem:
 mutex_unlock(&dqopt->dqio_mutex);
 return ret;
}
