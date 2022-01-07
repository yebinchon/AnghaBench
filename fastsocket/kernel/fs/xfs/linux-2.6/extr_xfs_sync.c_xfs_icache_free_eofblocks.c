
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
struct xfs_eofblocks {int eof_flags; } ;


 int SYNC_TRYLOCK ;
 int SYNC_WAIT ;
 int XFS_EOF_FLAGS_SYNC ;
 int XFS_ICI_EOFBLOCKS_TAG ;
 int xfs_inode_ag_iterator_tag (struct xfs_mount*,int ,int,struct xfs_eofblocks*,int ) ;
 int xfs_inode_free_eofblocks ;

int
xfs_icache_free_eofblocks(
 struct xfs_mount *mp,
 struct xfs_eofblocks *eofb)
{
 int flags = SYNC_TRYLOCK;

 if (eofb && (eofb->eof_flags & XFS_EOF_FLAGS_SYNC))
  flags = SYNC_WAIT;

 return xfs_inode_ag_iterator_tag(mp, xfs_inode_free_eofblocks, flags,
      eofb, XFS_ICI_EOFBLOCKS_TAG);
}
