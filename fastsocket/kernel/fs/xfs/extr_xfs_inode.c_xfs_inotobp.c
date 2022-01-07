
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
typedef int xfs_ino_t ;
typedef int xfs_dinode_t ;
typedef int xfs_buf_t ;
typedef int uint ;
struct xfs_imap {int im_boffset; scalar_t__ im_blkno; } ;


 int XBF_LOCK ;
 scalar_t__ xfs_buf_offset (int *,int) ;
 int xfs_imap (int *,int *,int ,struct xfs_imap*,int ) ;
 int xfs_imap_to_bp (int *,int *,struct xfs_imap*,int **,int ,int ) ;

int
xfs_inotobp(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_ino_t ino,
 xfs_dinode_t **dipp,
 xfs_buf_t **bpp,
 int *offset,
 uint imap_flags)
{
 struct xfs_imap imap;
 xfs_buf_t *bp;
 int error;

 imap.im_blkno = 0;
 error = xfs_imap(mp, tp, ino, &imap, imap_flags);
 if (error)
  return error;

 error = xfs_imap_to_bp(mp, tp, &imap, &bp, XBF_LOCK, imap_flags);
 if (error)
  return error;

 *dipp = (xfs_dinode_t *)xfs_buf_offset(bp, imap.im_boffset);
 *bpp = bp;
 *offset = imap.im_boffset;
 return 0;
}
