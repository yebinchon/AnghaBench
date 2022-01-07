
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_agnumber_t ;
struct xfs_perag {scalar_t__ pag_agno; unsigned long pag_ici_reclaim_cursor; int pag_ici_reclaim_lock; int pag_ici_root; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {scalar_t__ i_ino; } ;


 int EFSCORRUPTED ;
 int SYNC_TRYLOCK ;
 int XFS_ERROR (int) ;
 int XFS_ICI_RECLAIM_TAG ;
 unsigned long XFS_INO_TO_AGINO (struct xfs_mount*,scalar_t__) ;
 scalar_t__ XFS_INO_TO_AGNO (struct xfs_mount*,scalar_t__) ;
 int XFS_LOOKUP_BATCH ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_gang_lookup_tag (int *,void**,unsigned long,int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct xfs_perag* xfs_perag_get_tag (struct xfs_mount*,scalar_t__,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_reclaim_inode (struct xfs_inode*,struct xfs_perag*,int) ;
 scalar_t__ xfs_reclaim_inode_grab (struct xfs_inode*,int) ;

int
xfs_reclaim_inodes_ag(
 struct xfs_mount *mp,
 int flags,
 int *nr_to_scan)
{
 struct xfs_perag *pag;
 int error = 0;
 int last_error = 0;
 xfs_agnumber_t ag;
 int trylock = flags & SYNC_TRYLOCK;
 int skipped;

restart:
 ag = 0;
 skipped = 0;
 while ((pag = xfs_perag_get_tag(mp, ag, XFS_ICI_RECLAIM_TAG))) {
  unsigned long first_index = 0;
  int done = 0;
  int nr_found = 0;

  ag = pag->pag_agno + 1;

  if (trylock) {
   if (!mutex_trylock(&pag->pag_ici_reclaim_lock)) {
    skipped++;
    xfs_perag_put(pag);
    continue;
   }
   first_index = pag->pag_ici_reclaim_cursor;
  } else
   mutex_lock(&pag->pag_ici_reclaim_lock);

  do {
   struct xfs_inode *batch[XFS_LOOKUP_BATCH];
   int i;

   rcu_read_lock();
   nr_found = radix_tree_gang_lookup_tag(
     &pag->pag_ici_root,
     (void **)batch, first_index,
     XFS_LOOKUP_BATCH,
     XFS_ICI_RECLAIM_TAG);
   if (!nr_found) {
    done = 1;
    rcu_read_unlock();
    break;
   }





   for (i = 0; i < nr_found; i++) {
    struct xfs_inode *ip = batch[i];

    if (done || xfs_reclaim_inode_grab(ip, flags))
     batch[i] = ((void*)0);
    if (XFS_INO_TO_AGNO(mp, ip->i_ino) !=
        pag->pag_agno)
     continue;
    first_index = XFS_INO_TO_AGINO(mp, ip->i_ino + 1);
    if (first_index < XFS_INO_TO_AGINO(mp, ip->i_ino))
     done = 1;
   }


   rcu_read_unlock();

   for (i = 0; i < nr_found; i++) {
    if (!batch[i])
     continue;
    error = xfs_reclaim_inode(batch[i], pag, flags);
    if (error && last_error != EFSCORRUPTED)
     last_error = error;
   }

   *nr_to_scan -= XFS_LOOKUP_BATCH;

  } while (nr_found && !done && *nr_to_scan > 0);

  if (trylock && !done)
   pag->pag_ici_reclaim_cursor = first_index;
  else
   pag->pag_ici_reclaim_cursor = 0;
  mutex_unlock(&pag->pag_ici_reclaim_lock);
  xfs_perag_put(pag);
 }
 if (trylock && skipped && *nr_to_scan > 0) {
  trylock = 0;
  goto restart;
 }
 return XFS_ERROR(last_error);
}
