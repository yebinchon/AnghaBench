
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int sb_agblocks; scalar_t__ sb_dblocks; scalar_t__ sb_imax_pct; } ;
typedef TYPE_1__ xfs_sb_t ;
struct TYPE_15__ {int pagi_inodeok; int pagf_metadata; int pag_buf_tree; int pag_buf_lock; int pag_ici_root; int pag_ici_reclaim_lock; int pag_ici_lock; TYPE_3__* pag_mount; scalar_t__ pag_agno; } ;
typedef TYPE_2__ xfs_perag_t ;
struct TYPE_16__ {int m_flags; int m_perag_tree; scalar_t__ m_maxicount; int m_perag_lock; TYPE_1__ m_sb; } ;
typedef TYPE_3__ xfs_mount_t ;
typedef scalar_t__ xfs_ino_t ;
typedef scalar_t__ xfs_agnumber_t ;
typedef int xfs_agino_t ;
typedef scalar_t__ __uint64_t ;


 int BUG () ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_NOFS ;
 int INIT_RADIX_TREE (int *,int ) ;
 int KM_MAYFAIL ;
 int RB_ROOT ;
 scalar_t__ XFS_AGINO_TO_INO (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ XFS_MAXINUMBER_32 ;
 int XFS_MOUNT_32BITINODES ;
 int XFS_MOUNT_SMALL_INUMS ;
 int XFS_OFFBNO_TO_AGINO (TYPE_3__*,int,int ) ;
 int do_div (scalar_t__,int) ;
 int kmem_free (TYPE_2__*) ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int mutex_init (int *) ;
 TYPE_2__* radix_tree_delete (int *,scalar_t__) ;
 scalar_t__ radix_tree_insert (int *,scalar_t__,TYPE_2__*) ;
 scalar_t__ radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 TYPE_2__* xfs_perag_get (TYPE_3__*,scalar_t__) ;
 int xfs_perag_put (TYPE_2__*) ;

int
xfs_initialize_perag(
 xfs_mount_t *mp,
 xfs_agnumber_t agcount,
 xfs_agnumber_t *maxagi)
{
 xfs_agnumber_t index, max_metadata;
 xfs_agnumber_t first_initialised = 0;
 xfs_perag_t *pag;
 xfs_agino_t agino;
 xfs_ino_t ino;
 xfs_sb_t *sbp = &mp->m_sb;
 int error = -ENOMEM;






 for (index = 0; index < agcount; index++) {
  pag = xfs_perag_get(mp, index);
  if (pag) {
   xfs_perag_put(pag);
   continue;
  }
  if (!first_initialised)
   first_initialised = index;

  pag = kmem_zalloc(sizeof(*pag), KM_MAYFAIL);
  if (!pag)
   goto out_unwind;
  pag->pag_agno = index;
  pag->pag_mount = mp;
  spin_lock_init(&pag->pag_ici_lock);
  mutex_init(&pag->pag_ici_reclaim_lock);
  INIT_RADIX_TREE(&pag->pag_ici_root, GFP_ATOMIC);
  spin_lock_init(&pag->pag_buf_lock);
  pag->pag_buf_tree = RB_ROOT;

  if (radix_tree_preload(GFP_NOFS))
   goto out_unwind;

  spin_lock(&mp->m_perag_lock);
  if (radix_tree_insert(&mp->m_perag_tree, index, pag)) {
   BUG();
   spin_unlock(&mp->m_perag_lock);
   radix_tree_preload_end();
   error = -EEXIST;
   goto out_unwind;
  }
  spin_unlock(&mp->m_perag_lock);
  radix_tree_preload_end();
 }





 agino = XFS_OFFBNO_TO_AGINO(mp, sbp->sb_agblocks - 1, 0);
 ino = XFS_AGINO_TO_INO(mp, agcount - 1, agino);

 if ((mp->m_flags & XFS_MOUNT_SMALL_INUMS) && ino > XFS_MAXINUMBER_32)
  mp->m_flags |= XFS_MOUNT_32BITINODES;
 else
  mp->m_flags &= ~XFS_MOUNT_32BITINODES;

 if (mp->m_flags & XFS_MOUNT_32BITINODES) {




  if (mp->m_maxicount) {
   __uint64_t icount;

   icount = sbp->sb_dblocks * sbp->sb_imax_pct;
   do_div(icount, 100);
   icount += sbp->sb_agblocks - 1;
   do_div(icount, sbp->sb_agblocks);
   max_metadata = icount;
  } else {
   max_metadata = agcount;
  }

  for (index = 0; index < agcount; index++) {
   ino = XFS_AGINO_TO_INO(mp, index, agino);
   if (ino > XFS_MAXINUMBER_32) {
    index++;
    break;
   }

   pag = xfs_perag_get(mp, index);
   pag->pagi_inodeok = 1;
   if (index < max_metadata)
    pag->pagf_metadata = 1;
   xfs_perag_put(pag);
  }
 } else {
  for (index = 0; index < agcount; index++) {
   pag = xfs_perag_get(mp, index);
   pag->pagi_inodeok = 1;
   xfs_perag_put(pag);
  }
 }

 if (maxagi)
  *maxagi = index;
 return 0;

out_unwind:
 kmem_free(pag);
 for (; index > first_initialised; index--) {
  pag = radix_tree_delete(&mp->m_perag_tree, index);
  kmem_free(pag);
 }
 return error;
}
