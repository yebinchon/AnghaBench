
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ sb_fdblocks; } ;
struct TYPE_10__ {scalar_t__ m_resblks; scalar_t__ m_resblks_avail; int m_sb_lock; TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_11__ {scalar_t__ resblks; scalar_t__ resblks_avail; } ;
typedef TYPE_3__ xfs_fsop_resblks_t ;
typedef scalar_t__ __uint64_t ;
typedef scalar_t__ __int64_t ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__ XFS_ALLOC_SET_ASIDE (TYPE_2__*) ;
 int XFS_SBS_FDBLOCKS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_icsb_modify_counters (TYPE_2__*,int ,scalar_t__,int ) ;
 int xfs_icsb_sync_counters_locked (TYPE_2__*,int ) ;

int
xfs_reserve_blocks(
 xfs_mount_t *mp,
 __uint64_t *inval,
 xfs_fsop_resblks_t *outval)
{
 __int64_t lcounter, delta, fdblks_delta;
 __uint64_t request;


 if (inval == (__uint64_t *)((void*)0)) {
  if (!outval)
   return EINVAL;
  outval->resblks = mp->m_resblks;
  outval->resblks_avail = mp->m_resblks_avail;
  return 0;
 }

 request = *inval;
retry:
 spin_lock(&mp->m_sb_lock);
 xfs_icsb_sync_counters_locked(mp, 0);





 fdblks_delta = 0;
 if (mp->m_resblks > request) {
  lcounter = mp->m_resblks_avail - request;
  if (lcounter > 0) {
   fdblks_delta = lcounter;
   mp->m_resblks_avail -= lcounter;
  }
  mp->m_resblks = request;
 } else {
  __int64_t free;

  free = mp->m_sb.sb_fdblocks - XFS_ALLOC_SET_ASIDE(mp);
  if (!free)
   goto out;

  delta = request - mp->m_resblks;
  lcounter = free - delta;
  if (lcounter < 0) {

   mp->m_resblks += free;
   mp->m_resblks_avail += free;
   fdblks_delta = -free;
  } else {
   fdblks_delta = -delta;
   mp->m_resblks = request;
   mp->m_resblks_avail += delta;
  }
 }
out:
 if (outval) {
  outval->resblks = mp->m_resblks;
  outval->resblks_avail = mp->m_resblks_avail;
 }
 spin_unlock(&mp->m_sb_lock);

 if (fdblks_delta) {
  int error;
  error = xfs_icsb_modify_counters(mp, XFS_SBS_FDBLOCKS,
       fdblks_delta, 0);
  if (error == ENOSPC)
   goto retry;
 }
 return 0;
}
