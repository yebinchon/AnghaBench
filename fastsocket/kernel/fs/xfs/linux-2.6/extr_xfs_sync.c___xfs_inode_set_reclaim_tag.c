
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_perag {int pag_ici_reclaimable; int pag_agno; int pag_ici_root; } ;
struct xfs_inode {TYPE_1__* i_mount; int i_ino; } ;
struct TYPE_4__ {int m_perag_lock; int m_perag_tree; } ;


 int XFS_ICI_RECLAIM_TAG ;
 int XFS_INO_TO_AGINO (TYPE_1__*,int ) ;
 int XFS_INO_TO_AGNO (TYPE_1__*,int ) ;
 int _RET_IP_ ;
 int radix_tree_tag_set (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_perag_set_reclaim (TYPE_1__*,int ,int,int ) ;

void
__xfs_inode_set_reclaim_tag(
 struct xfs_perag *pag,
 struct xfs_inode *ip)
{
 radix_tree_tag_set(&pag->pag_ici_root,
      XFS_INO_TO_AGINO(ip->i_mount, ip->i_ino),
      XFS_ICI_RECLAIM_TAG);

 if (!pag->pag_ici_reclaimable) {

  spin_lock(&ip->i_mount->m_perag_lock);
  radix_tree_tag_set(&ip->i_mount->m_perag_tree,
    XFS_INO_TO_AGNO(ip->i_mount, ip->i_ino),
    XFS_ICI_RECLAIM_TAG);
  spin_unlock(&ip->i_mount->m_perag_lock);
  trace_xfs_perag_set_reclaim(ip->i_mount, pag->pag_agno,
       -1, _RET_IP_);
 }
 pag->pag_ici_reclaimable++;
}
