
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_inode_t ;
struct TYPE_4__ {int if_flags; int if_bytes; } ;
typedef TYPE_1__ xfs_ifork_t ;
typedef scalar_t__ xfs_fsblock_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef int xfs_extnum_t ;
typedef int xfs_bmbt_rec_t ;
typedef int xfs_bmbt_rec_host_t ;
typedef int uint ;


 int ASSERT (int) ;
 int XFS_DATA_FORK ;
 int XFS_IFEXTENTS ;
 TYPE_1__* XFS_IFORK_PTR (int *,int) ;
 scalar_t__ xfs_bmbt_get_blockcount (int *) ;
 scalar_t__ xfs_bmbt_get_startoff (int *) ;
 int * xfs_iext_get_ext (TYPE_1__*,int) ;
 int xfs_iread_extents (int *,int *,int) ;

int
xfs_bmap_eof(
 xfs_inode_t *ip,
 xfs_fileoff_t endoff,
 int whichfork,
 int *eof)
{
 xfs_fsblock_t blockcount;
 int error;
 xfs_ifork_t *ifp;
 xfs_bmbt_rec_host_t *lastrec;
 xfs_extnum_t nextents;
 xfs_fileoff_t startoff;

 ASSERT(whichfork == XFS_DATA_FORK);
 ifp = XFS_IFORK_PTR(ip, whichfork);
 if (!(ifp->if_flags & XFS_IFEXTENTS) &&
     (error = xfs_iread_extents(((void*)0), ip, whichfork)))
  return error;
 nextents = ifp->if_bytes / (uint)sizeof(xfs_bmbt_rec_t);
 if (nextents == 0) {
  *eof = 1;
  return 0;
 }



 lastrec = xfs_iext_get_ext(ifp, nextents - 1);
 startoff = xfs_bmbt_get_startoff(lastrec);
 blockcount = xfs_bmbt_get_blockcount(lastrec);
 *eof = endoff >= startoff + blockcount;
 return 0;
}
