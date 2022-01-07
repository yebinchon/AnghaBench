
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; scalar_t__* i_dquot; } ;
typedef int qsize_t ;
struct TYPE_2__ {int dqptr_sem; } ;


 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int MAXQUOTAS ;
 int QUOTA_OK ;
 int down_read (int *) ;
 int dq_data_lock ;
 int dquot_claim_reserved_space (scalar_t__,int ) ;
 int inode_claim_rsv_space (struct inode*,int ) ;
 int mark_dquot_dirty (scalar_t__) ;
 TYPE_1__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

int dquot_claim_space(struct inode *inode, qsize_t number)
{
 int cnt;
 int ret = QUOTA_OK;

 if (IS_NOQUOTA(inode)) {
  inode_claim_rsv_space(inode, number);
  goto out;
 }

 down_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
 if (IS_NOQUOTA(inode)) {
  up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
  inode_claim_rsv_space(inode, number);
  goto out;
 }

 spin_lock(&dq_data_lock);

 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (inode->i_dquot[cnt])
   dquot_claim_reserved_space(inode->i_dquot[cnt],
       number);
 }

 inode_claim_rsv_space(inode, number);
 spin_unlock(&dq_data_lock);

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  if (inode->i_dquot[cnt])
   mark_dquot_dirty(inode->i_dquot[cnt]);
 up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
out:
 return ret;
}
