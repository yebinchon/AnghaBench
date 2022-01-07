
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; scalar_t__* i_dquot; } ;
typedef int qsize_t ;
struct TYPE_2__ {int dqptr_sem; } ;


 int DQUOT_SPACE_RESERVE ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int MAXQUOTAS ;
 int QUOTA_OK ;
 int down_read (int *) ;
 int dq_data_lock ;
 int dquot_decr_space (scalar_t__,int ) ;
 int dquot_free_reserved_space (scalar_t__,int ) ;
 int flush_warnings (scalar_t__*,char*) ;
 char info_bdq_free (scalar_t__,int ) ;
 int inode_decr_space (struct inode*,int ,int) ;
 int mark_dquot_dirty (scalar_t__) ;
 TYPE_1__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

int __dquot_free_space(struct inode *inode, qsize_t number, int flags)
{
 unsigned int cnt;
 char warntype[MAXQUOTAS];
 int reserve = flags & DQUOT_SPACE_RESERVE;



 if (IS_NOQUOTA(inode)) {
out_sub:
  inode_decr_space(inode, number, reserve);
  return QUOTA_OK;
 }

 down_read(&sb_dqopt(inode->i_sb)->dqptr_sem);

 if (IS_NOQUOTA(inode)) {
  up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
  goto out_sub;
 }
 spin_lock(&dq_data_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!inode->i_dquot[cnt])
   continue;
  warntype[cnt] = info_bdq_free(inode->i_dquot[cnt], number);
  if (reserve)
   dquot_free_reserved_space(inode->i_dquot[cnt], number);
  else
   dquot_decr_space(inode->i_dquot[cnt], number);
 }
 inode_decr_space(inode, number, reserve);
 spin_unlock(&dq_data_lock);

 if (reserve)
  goto out_unlock;

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  if (inode->i_dquot[cnt])
   mark_dquot_dirty(inode->i_dquot[cnt]);
out_unlock:
 flush_warnings(inode->i_dquot, warntype);
 up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
 return QUOTA_OK;
}
