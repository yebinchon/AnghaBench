
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int m_flags; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_17__ {scalar_t__ di_mode; scalar_t__ di_nlink; } ;
struct TYPE_19__ {scalar_t__ i_delayed_blks; TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;


 int EAGAIN ;
 int FI_NONE ;
 int S_ISREG (scalar_t__) ;
 int VFS_I (TYPE_3__*) ;
 scalar_t__ VN_DIRTY (int ) ;
 int XBF_ASYNC ;
 int XFS_FORCED_SHUTDOWN (TYPE_2__*) ;
 int XFS_FREE_EOF_TRYLOCK ;
 int XFS_IDIRTY_RELEASE ;
 int XFS_ITRUNCATED ;
 int XFS_MOUNT_RDONLY ;
 scalar_t__ xfs_can_free_eofblocks (TYPE_3__*,int) ;
 int xfs_filestream_deassociate (TYPE_3__*) ;
 int xfs_flush_pages (TYPE_3__*,int ,int,int ,int ) ;
 int xfs_free_eofblocks (TYPE_2__*,TYPE_3__*,int ) ;
 int xfs_iflags_clear (TYPE_3__*,int ) ;
 int xfs_iflags_set (TYPE_3__*,int ) ;
 scalar_t__ xfs_iflags_test (TYPE_3__*,int ) ;
 int xfs_iflags_test_and_clear (TYPE_3__*,int ) ;
 scalar_t__ xfs_inode_is_filestream (TYPE_3__*) ;

int
xfs_release(
 xfs_inode_t *ip)
{
 xfs_mount_t *mp = ip->i_mount;
 int error;

 if (!S_ISREG(ip->i_d.di_mode) || (ip->i_d.di_mode == 0))
  return 0;


 if (mp->m_flags & XFS_MOUNT_RDONLY)
  return 0;

 if (!XFS_FORCED_SHUTDOWN(mp)) {
  int truncated;
  if ((ip->i_d.di_nlink == 0) && xfs_inode_is_filestream(ip))
   xfs_filestream_deassociate(ip);
  truncated = xfs_iflags_test_and_clear(ip, XFS_ITRUNCATED);
  if (truncated) {
   xfs_iflags_clear(ip, XFS_IDIRTY_RELEASE);
   if (VN_DIRTY(VFS_I(ip)) && ip->i_delayed_blks > 0)
    xfs_flush_pages(ip, 0, -1, XBF_ASYNC, FI_NONE);
  }
 }

 if (ip->i_d.di_nlink == 0)
  return 0;

 if (xfs_can_free_eofblocks(ip, 0)) {
  if (xfs_iflags_test(ip, XFS_IDIRTY_RELEASE))
   return 0;

  error = xfs_free_eofblocks(mp, ip,
        XFS_FREE_EOF_TRYLOCK);
  if (error && error != EAGAIN)
   return error;


  if (ip->i_delayed_blks)
   xfs_iflags_set(ip, XFS_IDIRTY_RELEASE);
 }
 return 0;
}
