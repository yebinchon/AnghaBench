
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pag_ici_root; } ;
typedef TYPE_1__ xfs_perag_t ;
typedef int xfs_mount_t ;
struct TYPE_8__ {int i_ino; } ;
typedef TYPE_2__ xfs_inode_t ;


 int XFS_ICI_RECLAIM_TAG ;
 int XFS_INO_TO_AGINO (int *,int ) ;
 int __xfs_inode_clear_reclaim (TYPE_1__*,TYPE_2__*) ;
 int radix_tree_tag_clear (int *,int ,int ) ;

void
__xfs_inode_clear_reclaim_tag(
 xfs_mount_t *mp,
 xfs_perag_t *pag,
 xfs_inode_t *ip)
{
 radix_tree_tag_clear(&pag->pag_ici_root,
   XFS_INO_TO_AGINO(mp, ip->i_ino), XFS_ICI_RECLAIM_TAG);
 __xfs_inode_clear_reclaim(pag, ip);
}
