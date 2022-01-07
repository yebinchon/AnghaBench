
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_5__ {scalar_t__ im_blkno; int im_boffset; } ;
struct TYPE_4__ {TYPE_3__ i_imap; } ;
typedef TYPE_1__ xfs_inode_t ;
typedef int xfs_dinode_t ;
typedef int xfs_buf_t ;
typedef int uint ;


 int ASSERT (int) ;
 int EAGAIN ;
 int XBF_TRYLOCK ;
 scalar_t__ xfs_buf_offset (int *,int ) ;
 int xfs_imap_to_bp (int *,int *,TYPE_3__*,int **,int,int ) ;

int
xfs_itobp(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_inode_t *ip,
 xfs_dinode_t **dipp,
 xfs_buf_t **bpp,
 uint buf_flags)
{
 xfs_buf_t *bp;
 int error;

 ASSERT(ip->i_imap.im_blkno != 0);

 error = xfs_imap_to_bp(mp, tp, &ip->i_imap, &bp, buf_flags, 0);
 if (error)
  return error;

 if (!bp) {
  ASSERT(buf_flags & XBF_TRYLOCK);
  ASSERT(tp == ((void*)0));
  *bpp = ((void*)0);
  return EAGAIN;
 }

 *dipp = (xfs_dinode_t *)xfs_buf_offset(bp, ip->i_imap.im_boffset);
 *bpp = bp;
 return 0;
}
