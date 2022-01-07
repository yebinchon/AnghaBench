
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_flags_lock; int i_ino; struct xfs_mount* i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct xfs_perag {int pag_ici_lock; } ;
struct xfs_mount {int dummy; } ;


 int XFS_INO_TO_AGNO (struct xfs_mount*,int ) ;
 int XFS_IRECLAIMABLE ;
 int __xfs_iflags_set (TYPE_1__*,int ) ;
 int __xfs_inode_set_reclaim_tag (struct xfs_perag*,TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;

void
xfs_inode_set_reclaim_tag(
 xfs_inode_t *ip)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_perag *pag;

 pag = xfs_perag_get(mp, XFS_INO_TO_AGNO(mp, ip->i_ino));

 spin_lock(&pag->pag_ici_lock);
 spin_lock(&ip->i_flags_lock);
 __xfs_inode_set_reclaim_tag(pag, ip);
 __xfs_iflags_set(ip, XFS_IRECLAIMABLE);
 spin_unlock(&ip->i_flags_lock);
 spin_unlock(&pag->pag_ici_lock);
 xfs_perag_put(pag);
}
