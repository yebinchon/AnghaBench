
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ msb_field; int msb_delta; } ;
typedef TYPE_1__ xfs_mod_sb_t ;
typedef int uint ;
struct xfs_mount {int m_sb_lock; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_SBS_FDBLOCKS ;
 scalar_t__ XFS_SBS_ICOUNT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_mod_incore_sb_unlocked (struct xfs_mount*,scalar_t__,int ,int) ;

int
xfs_mod_incore_sb_batch(
 struct xfs_mount *mp,
 xfs_mod_sb_t *msb,
 uint nmsb,
 int rsvd)
{
 xfs_mod_sb_t *msbp;
 int error = 0;







 spin_lock(&mp->m_sb_lock);
 for (msbp = msb; msbp < (msb + nmsb); msbp++) {
  ASSERT(msbp->msb_field < XFS_SBS_ICOUNT ||
         msbp->msb_field > XFS_SBS_FDBLOCKS);

  error = xfs_mod_incore_sb_unlocked(mp, msbp->msb_field,
         msbp->msb_delta, rsvd);
  if (error)
   goto unwind;
 }
 spin_unlock(&mp->m_sb_lock);
 return 0;

unwind:
 while (--msbp >= msb) {
  error = xfs_mod_incore_sb_unlocked(mp, msbp->msb_field,
         -msbp->msb_delta, rsvd);
  ASSERT(error == 0);
 }
 spin_unlock(&mp->m_sb_lock);
 return error;
}
