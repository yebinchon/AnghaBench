
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; scalar_t__* i_dquot; } ;
typedef int qsize_t ;
struct TYPE_2__ {int dqptr_sem; } ;


 scalar_t__ IS_NOQUOTA (struct inode const*) ;
 int MAXQUOTAS ;
 int NO_QUOTA ;
 char QUOTA_NL_NOWARN ;
 int QUOTA_OK ;
 int check_idq (scalar_t__,int ,char*) ;
 int down_read (int *) ;
 int dq_data_lock ;
 int dquot_incr_inodes (scalar_t__,int ) ;
 int flush_warnings (scalar_t__*,char*) ;
 int mark_dquot_dirty (scalar_t__) ;
 TYPE_1__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

int dquot_alloc_inode(const struct inode *inode, qsize_t number)
{
 int cnt, ret = NO_QUOTA;
 char warntype[MAXQUOTAS];



 if (IS_NOQUOTA(inode))
  return QUOTA_OK;
 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  warntype[cnt] = QUOTA_NL_NOWARN;
 down_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
 if (IS_NOQUOTA(inode)) {
  up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
  return QUOTA_OK;
 }
 spin_lock(&dq_data_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!inode->i_dquot[cnt])
   continue;
  if (check_idq(inode->i_dquot[cnt], number, warntype+cnt)
      == NO_QUOTA)
   goto warn_put_all;
 }

 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!inode->i_dquot[cnt])
   continue;
  dquot_incr_inodes(inode->i_dquot[cnt], number);
 }
 ret = QUOTA_OK;
warn_put_all:
 spin_unlock(&dq_data_lock);
 if (ret == QUOTA_OK)

  for (cnt = 0; cnt < MAXQUOTAS; cnt++)
   if (inode->i_dquot[cnt])
    mark_dquot_dirty(inode->i_dquot[cnt]);
 flush_warnings(inode->i_dquot, warntype);
 up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
 return ret;
}
