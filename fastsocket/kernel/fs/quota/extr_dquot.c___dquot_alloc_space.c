
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; scalar_t__* i_dquot; } ;
typedef int qsize_t ;
struct TYPE_2__ {int dqptr_sem; } ;


 int DQUOT_SPACE_NOFAIL ;
 int DQUOT_SPACE_RESERVE ;
 int DQUOT_SPACE_WARN ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int MAXQUOTAS ;
 int NO_QUOTA ;
 char QUOTA_NL_NOWARN ;
 int QUOTA_OK ;
 int check_bdq (scalar_t__,int ,int,char*) ;
 int down_read (int *) ;
 int dq_data_lock ;
 int dquot_incr_space (scalar_t__,int ) ;
 int dquot_resv_space (scalar_t__,int ) ;
 int flush_warnings (scalar_t__*,char*) ;
 int inode_incr_space (struct inode*,int ,int) ;
 int mark_dquot_dirty (scalar_t__) ;
 TYPE_1__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

int __dquot_alloc_space(struct inode *inode, qsize_t number, int flags)
{
 int cnt, ret = QUOTA_OK;
 char warntype[MAXQUOTAS];
 int warn = flags & DQUOT_SPACE_WARN;
 int reserve = flags & DQUOT_SPACE_RESERVE;
 int nofail = flags & DQUOT_SPACE_NOFAIL;





 if (IS_NOQUOTA(inode)) {
  inode_incr_space(inode, number, reserve);
  goto out;
 }

 down_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
 if (IS_NOQUOTA(inode)) {
  inode_incr_space(inode, number, reserve);
  goto out_unlock;
 }

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  warntype[cnt] = QUOTA_NL_NOWARN;

 spin_lock(&dq_data_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!inode->i_dquot[cnt])
   continue;
  if (check_bdq(inode->i_dquot[cnt], number, warn, warntype+cnt)
      == NO_QUOTA && !nofail) {
   ret = NO_QUOTA;
   spin_unlock(&dq_data_lock);
   goto out_flush_warn;
  }
 }
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!inode->i_dquot[cnt])
   continue;
  if (reserve)
   dquot_resv_space(inode->i_dquot[cnt], number);
  else
   dquot_incr_space(inode->i_dquot[cnt], number);
 }
 inode_incr_space(inode, number, reserve);
 spin_unlock(&dq_data_lock);

 if (reserve)
  goto out_flush_warn;

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  if (inode->i_dquot[cnt])
   mark_dquot_dirty(inode->i_dquot[cnt]);
out_flush_warn:
 flush_warnings(inode->i_dquot, warntype);
out_unlock:
 up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
out:
 return ret;
}
