
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct xfs_mount* i_mount; int i_ino; } ;
typedef TYPE_1__ xfs_inode_t ;
struct xfs_perag {int pag_ici_lock; int pag_agno; int pag_ici_root; } ;
struct xfs_mount {int m_perag_lock; int m_perag_tree; } ;


 int XFS_ICI_EOFBLOCKS_TAG ;
 int XFS_INO_TO_AGINO (struct xfs_mount*,int ) ;
 int XFS_INO_TO_AGNO (struct xfs_mount*,int ) ;
 int _RET_IP_ ;
 int radix_tree_tag_set (int *,int ,int ) ;
 int radix_tree_tagged (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_inode_set_eofblocks_tag (TYPE_1__*) ;
 int trace_xfs_perag_set_eofblocks (struct xfs_mount*,int ,int,int ) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_queue_eofblocks (struct xfs_mount*) ;

void
xfs_inode_set_eofblocks_tag(
 xfs_inode_t *ip)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_perag *pag;
 int tagged;

 pag = xfs_perag_get(mp, XFS_INO_TO_AGNO(mp, ip->i_ino));
 spin_lock(&pag->pag_ici_lock);
 trace_xfs_inode_set_eofblocks_tag(ip);

 tagged = radix_tree_tagged(&pag->pag_ici_root,
       XFS_ICI_EOFBLOCKS_TAG);
 radix_tree_tag_set(&pag->pag_ici_root,
      XFS_INO_TO_AGINO(ip->i_mount, ip->i_ino),
      XFS_ICI_EOFBLOCKS_TAG);
 if (!tagged) {

  spin_lock(&ip->i_mount->m_perag_lock);
  radix_tree_tag_set(&ip->i_mount->m_perag_tree,
       XFS_INO_TO_AGNO(ip->i_mount, ip->i_ino),
       XFS_ICI_EOFBLOCKS_TAG);
  spin_unlock(&ip->i_mount->m_perag_lock);


  xfs_queue_eofblocks(ip->i_mount);

  trace_xfs_perag_set_eofblocks(ip->i_mount, pag->pag_agno,
           -1, _RET_IP_);
 }

 spin_unlock(&pag->pag_ici_lock);
 xfs_perag_put(pag);
}
