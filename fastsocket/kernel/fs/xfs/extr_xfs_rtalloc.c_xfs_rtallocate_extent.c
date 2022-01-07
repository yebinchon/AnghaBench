
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
typedef scalar_t__ xfs_rtblock_t ;
struct TYPE_12__ {int m_rbmip; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
typedef int xfs_buf_t ;
typedef int xfs_alloctype_t ;


 int ASSERT (int) ;
 int EIO ;
 scalar_t__ NULLRTBLOCK ;



 int XFS_ILOCK_EXCL ;
 int XFS_TRANS_SB_FREXTENTS ;
 int XFS_TRANS_SB_RES_FREXTENTS ;
 int xfs_isilocked (int ,int ) ;
 int xfs_rtallocate_extent_exact (TYPE_2__*,TYPE_1__*,scalar_t__,int,int,int*,int **,int *,int,scalar_t__*) ;
 int xfs_rtallocate_extent_near (TYPE_2__*,TYPE_1__*,scalar_t__,int,int,int*,int **,int *,int,scalar_t__*) ;
 int xfs_rtallocate_extent_size (TYPE_2__*,TYPE_1__*,int,int,int*,int **,int *,int,scalar_t__*) ;
 int xfs_trans_mod_sb (TYPE_1__*,int ,long) ;

int
xfs_rtallocate_extent(
 xfs_trans_t *tp,
 xfs_rtblock_t bno,
 xfs_extlen_t minlen,
 xfs_extlen_t maxlen,
 xfs_extlen_t *len,
 xfs_alloctype_t type,
 int wasdel,
 xfs_extlen_t prod,
 xfs_rtblock_t *rtblock)
{
 xfs_mount_t *mp = tp->t_mountp;
 int error;
 xfs_rtblock_t r;
 xfs_fsblock_t sb;
 xfs_buf_t *sumbp;

 ASSERT(xfs_isilocked(mp->m_rbmip, XFS_ILOCK_EXCL));
 ASSERT(minlen > 0 && minlen <= maxlen);




 if (prod > 1) {
  xfs_extlen_t i;

  if ((i = maxlen % prod))
   maxlen -= i;
  if ((i = minlen % prod))
   minlen += prod - i;
  if (maxlen < minlen) {
   *rtblock = NULLRTBLOCK;
   return 0;
  }
 }

 sumbp = ((void*)0);



 switch (type) {
 case 130:
  error = xfs_rtallocate_extent_size(mp, tp, minlen, maxlen, len,
    &sumbp, &sb, prod, &r);
  break;
 case 129:
  error = xfs_rtallocate_extent_near(mp, tp, bno, minlen, maxlen,
    len, &sumbp, &sb, prod, &r);
  break;
 case 128:
  error = xfs_rtallocate_extent_exact(mp, tp, bno, minlen, maxlen,
    len, &sumbp, &sb, prod, &r);
  break;
 default:
  error = EIO;
  ASSERT(0);
 }
 if (error)
  return error;




 if (r != NULLRTBLOCK) {
  long slen = (long)*len;

  ASSERT(*len >= minlen && *len <= maxlen);
  if (wasdel)
   xfs_trans_mod_sb(tp, XFS_TRANS_SB_RES_FREXTENTS, -slen);
  else
   xfs_trans_mod_sb(tp, XFS_TRANS_SB_FREXTENTS, -slen);
 }
 *rtblock = r;
 return 0;
}
