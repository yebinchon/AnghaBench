
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_sb_field_t ;
struct xfs_mount {int m_sb_lock; } ;
typedef int int64_t ;


 int ASSERT (int) ;
 scalar_t__ XFS_SBS_FDBLOCKS ;
 scalar_t__ XFS_SBS_ICOUNT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_mod_incore_sb_unlocked (struct xfs_mount*,scalar_t__,int ,int) ;

int
xfs_mod_incore_sb(
 struct xfs_mount *mp,
 xfs_sb_field_t field,
 int64_t delta,
 int rsvd)
{
 int status;




 spin_lock(&mp->m_sb_lock);
 status = xfs_mod_incore_sb_unlocked(mp, field, delta, rsvd);
 spin_unlock(&mp->m_sb_lock);

 return status;
}
