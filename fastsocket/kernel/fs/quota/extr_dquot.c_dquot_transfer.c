
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_uid; scalar_t__ i_gid; int i_sb; struct dquot** i_dquot; } ;
struct iattr {int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; } ;
struct dquot {int dummy; } ;
typedef scalar_t__ qsize_t ;
struct TYPE_2__ {int dqptr_sem; } ;


 int ATTR_GID ;
 int ATTR_UID ;
 size_t GRPQUOTA ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int MAXQUOTAS ;
 int NO_QUOTA ;
 char QUOTA_NL_NOWARN ;
 int QUOTA_OK ;
 size_t USRQUOTA ;
 int check_bdq (struct dquot*,scalar_t__,int ,char*) ;
 int check_idq (struct dquot*,int,char*) ;
 int down_write (int *) ;
 int dq_data_lock ;
 struct dquot* dqget (int ,scalar_t__,size_t) ;
 int dqput (struct dquot*) ;
 int dquot_decr_inodes (struct dquot*,int) ;
 int dquot_decr_space (struct dquot*,scalar_t__) ;
 int dquot_free_reserved_space (struct dquot*,scalar_t__) ;
 int dquot_incr_inodes (struct dquot*,int) ;
 int dquot_incr_space (struct dquot*,scalar_t__) ;
 int dquot_resv_space (struct dquot*,scalar_t__) ;
 int flush_warnings (struct dquot**,char*) ;
 char info_bdq_free (struct dquot*,scalar_t__) ;
 char info_idq_free (struct dquot*,int) ;
 scalar_t__ inode_get_bytes (struct inode*) ;
 scalar_t__ inode_get_rsv_space (struct inode*) ;
 int mark_dquot_dirty (struct dquot*) ;
 TYPE_1__* sb_dqopt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;

int dquot_transfer(struct inode *inode, struct iattr *iattr)
{
 qsize_t space, cur_space;
 qsize_t rsv_space = 0;
 struct dquot *transfer_from[MAXQUOTAS];
 struct dquot *transfer_to[MAXQUOTAS];
 int cnt, ret = QUOTA_OK;
 int chuid = iattr->ia_valid & ATTR_UID && inode->i_uid != iattr->ia_uid,
     chgid = iattr->ia_valid & ATTR_GID && inode->i_gid != iattr->ia_gid;
 char warntype_to[MAXQUOTAS];
 char warntype_from_inodes[MAXQUOTAS], warntype_from_space[MAXQUOTAS];



 if (IS_NOQUOTA(inode))
  return QUOTA_OK;

 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  transfer_from[cnt] = ((void*)0);
  transfer_to[cnt] = ((void*)0);
  warntype_to[cnt] = QUOTA_NL_NOWARN;
 }
 if (chuid)
  transfer_to[USRQUOTA] = dqget(inode->i_sb, iattr->ia_uid,
           USRQUOTA);
 if (chgid)
  transfer_to[GRPQUOTA] = dqget(inode->i_sb, iattr->ia_gid,
           GRPQUOTA);

 down_write(&sb_dqopt(inode->i_sb)->dqptr_sem);

 if (IS_NOQUOTA(inode)) {
  up_write(&sb_dqopt(inode->i_sb)->dqptr_sem);
  goto put_all;
 }
 spin_lock(&dq_data_lock);
 cur_space = inode_get_bytes(inode);
 rsv_space = inode_get_rsv_space(inode);
 space = cur_space + rsv_space;

 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!transfer_to[cnt])
   continue;
  transfer_from[cnt] = inode->i_dquot[cnt];
  if (check_idq(transfer_to[cnt], 1, warntype_to + cnt) ==
      NO_QUOTA || check_bdq(transfer_to[cnt], space, 0,
      warntype_to + cnt) == NO_QUOTA)
   goto over_quota;
 }




 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {



  if (!transfer_to[cnt])
   continue;


  if (transfer_from[cnt]) {
   warntype_from_inodes[cnt] =
    info_idq_free(transfer_from[cnt], 1);
   warntype_from_space[cnt] =
    info_bdq_free(transfer_from[cnt], space);
   dquot_decr_inodes(transfer_from[cnt], 1);
   dquot_decr_space(transfer_from[cnt], cur_space);
   dquot_free_reserved_space(transfer_from[cnt],
        rsv_space);
  }

  dquot_incr_inodes(transfer_to[cnt], 1);
  dquot_incr_space(transfer_to[cnt], cur_space);
  dquot_resv_space(transfer_to[cnt], rsv_space);

  inode->i_dquot[cnt] = transfer_to[cnt];
 }
 spin_unlock(&dq_data_lock);
 up_write(&sb_dqopt(inode->i_sb)->dqptr_sem);


 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (transfer_from[cnt])
   mark_dquot_dirty(transfer_from[cnt]);
  if (transfer_to[cnt]) {
   mark_dquot_dirty(transfer_to[cnt]);

   transfer_to[cnt] = ((void*)0);
  }
 }
warn_put_all:
 flush_warnings(transfer_to, warntype_to);
 flush_warnings(transfer_from, warntype_from_inodes);
 flush_warnings(transfer_from, warntype_from_space);
put_all:
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  dqput(transfer_from[cnt]);
  dqput(transfer_to[cnt]);
 }
 return ret;
over_quota:
 spin_unlock(&dq_data_lock);
 up_write(&sb_dqopt(inode->i_sb)->dqptr_sem);

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  transfer_from[cnt] = ((void*)0);
 ret = NO_QUOTA;
 goto warn_put_all;
}
