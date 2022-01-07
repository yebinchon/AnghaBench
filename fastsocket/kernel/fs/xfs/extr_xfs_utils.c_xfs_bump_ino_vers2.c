
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* t_mountp; } ;
typedef TYPE_2__ xfs_trans_t ;
struct TYPE_11__ {int m_sb_lock; int m_sb; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_9__ {int di_version; int * di_pad; scalar_t__ di_onlink; } ;
struct TYPE_12__ {TYPE_1__ i_d; } ;
typedef TYPE_4__ xfs_inode_t ;


 int ASSERT (int) ;
 int XFS_ILOCK_EXCL ;
 int XFS_SB_VERSIONNUM ;
 int memset (int *,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_isilocked (TYPE_4__*,int ) ;
 int xfs_mod_sb (TYPE_2__*,int ) ;
 int xfs_sb_version_addnlink (int *) ;
 int xfs_sb_version_hasnlink (int *) ;

void
xfs_bump_ino_vers2(
 xfs_trans_t *tp,
 xfs_inode_t *ip)
{
 xfs_mount_t *mp;

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 ASSERT(ip->i_d.di_version == 1);

 ip->i_d.di_version = 2;
 ip->i_d.di_onlink = 0;
 memset(&(ip->i_d.di_pad[0]), 0, sizeof(ip->i_d.di_pad));
 mp = tp->t_mountp;
 if (!xfs_sb_version_hasnlink(&mp->m_sb)) {
  spin_lock(&mp->m_sb_lock);
  if (!xfs_sb_version_hasnlink(&mp->m_sb)) {
   xfs_sb_version_addnlink(&mp->m_sb);
   spin_unlock(&mp->m_sb_lock);
   xfs_mod_sb(tp, XFS_SB_VERSIONNUM);
  } else {
   spin_unlock(&mp->m_sb_lock);
  }
 }

}
