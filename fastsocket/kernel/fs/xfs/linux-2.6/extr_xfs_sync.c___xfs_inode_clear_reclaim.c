
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pag_agno; int pag_ici_reclaimable; } ;
typedef TYPE_1__ xfs_perag_t ;
struct TYPE_8__ {TYPE_3__* i_mount; int i_ino; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_9__ {int m_perag_lock; int m_perag_tree; } ;


 int XFS_ICI_RECLAIM_TAG ;
 int XFS_INO_TO_AGNO (TYPE_3__*,int ) ;
 int _RET_IP_ ;
 int radix_tree_tag_clear (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_perag_clear_reclaim (TYPE_3__*,int ,int,int ) ;

void
__xfs_inode_clear_reclaim(
 xfs_perag_t *pag,
 xfs_inode_t *ip)
{
 pag->pag_ici_reclaimable--;
 if (!pag->pag_ici_reclaimable) {

  spin_lock(&ip->i_mount->m_perag_lock);
  radix_tree_tag_clear(&ip->i_mount->m_perag_tree,
    XFS_INO_TO_AGNO(ip->i_mount, ip->i_ino),
    XFS_ICI_RECLAIM_TAG);
  spin_unlock(&ip->i_mount->m_perag_lock);
  trace_xfs_perag_clear_reclaim(ip->i_mount, pag->pag_agno,
       -1, _RET_IP_);
 }
}
