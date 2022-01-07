
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
 int QUOTA_OK ;
 int down_read (int *) ;
 int dq_data_lock ;
 int dquot_decr_inodes (scalar_t__,int ) ;
 int flush_warnings (scalar_t__*,char*) ;
 char info_idq_free (scalar_t__,int ) ;
 int mark_dquot_dirty (scalar_t__) ;
 TYPE_1__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

int dquot_free_inode(const struct inode *inode, qsize_t number)
{
 unsigned int cnt;
 char warntype[MAXQUOTAS];



 if (IS_NOQUOTA(inode))
  return QUOTA_OK;

 down_read(&sb_dqopt(inode->i_sb)->dqptr_sem);

 if (IS_NOQUOTA(inode)) {
  up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
  return QUOTA_OK;
 }
 spin_lock(&dq_data_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!inode->i_dquot[cnt])
   continue;
  warntype[cnt] = info_idq_free(inode->i_dquot[cnt], number);
  dquot_decr_inodes(inode->i_dquot[cnt], number);
 }
 spin_unlock(&dq_data_lock);

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  if (inode->i_dquot[cnt])
   mark_dquot_dirty(inode->i_dquot[cnt]);
 flush_warnings(inode->i_dquot, warntype);
 up_read(&sb_dqopt(inode->i_sb)->dqptr_sem);
 return QUOTA_OK;
}
