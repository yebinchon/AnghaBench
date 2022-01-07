
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_14__ {scalar_t__ m_dirleafblk; int m_dirblkfsbs; scalar_t__ m_dirfreeblk; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_13__ {scalar_t__ di_nblocks; } ;
struct TYPE_15__ {TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_drfsbno_t ;
typedef scalar_t__ xfs_dablk_t ;
struct TYPE_16__ {int whichfork; int total; int flist; int * firstblock; int * trans; TYPE_3__* dp; } ;
typedef TYPE_4__ xfs_da_args_t ;
struct TYPE_17__ {scalar_t__ br_startoff; scalar_t__ br_blockcount; } ;
typedef TYPE_5__ xfs_bmbt_irec_t ;


 int ASSERT (int) ;
 int ENOSPC ;
 int KM_SLEEP ;
 int MIN (int ,int) ;
 int XFS_BMAPI_CONTIG ;
 int XFS_BMAPI_METADATA ;
 int XFS_BMAPI_WRITE ;
 int XFS_BMAP_MAX_NMAP ;
 int XFS_DATA_FORK ;
 int XFS_ERROR (int ) ;
 TYPE_5__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_5__*) ;
 int trace_xfs_da_grow_inode (TYPE_4__*) ;
 int xfs_bmap_first_unused (int *,TYPE_3__*,int,scalar_t__*,int) ;
 int xfs_bmapi (int *,TYPE_3__*,scalar_t__,int,int,int *,int ,TYPE_5__*,int*,int ) ;
 int xfs_bmapi_aflag (int) ;

int
xfs_da_grow_inode(xfs_da_args_t *args, xfs_dablk_t *new_blkno)
{
 xfs_fileoff_t bno, b;
 xfs_bmbt_irec_t map;
 xfs_bmbt_irec_t *mapp;
 xfs_inode_t *dp;
 int nmap, error, w, count, c, got, i, mapi;
 xfs_trans_t *tp;
 xfs_mount_t *mp;
 xfs_drfsbno_t nblks;

 trace_xfs_da_grow_inode(args);

 dp = args->dp;
 mp = dp->i_mount;
 w = args->whichfork;
 tp = args->trans;
 nblks = dp->i_d.di_nblocks;




 if (w == XFS_DATA_FORK) {
  bno = mp->m_dirleafblk;
  count = mp->m_dirblkfsbs;
 } else {
  bno = 0;
  count = 1;
 }



 if ((error = xfs_bmap_first_unused(tp, dp, count, &bno, w)))
  return error;
 if (w == XFS_DATA_FORK)
  ASSERT(bno >= mp->m_dirleafblk && bno < mp->m_dirfreeblk);



 nmap = 1;
 ASSERT(args->firstblock != ((void*)0));
 if ((error = xfs_bmapi(tp, dp, bno, count,
   xfs_bmapi_aflag(w)|XFS_BMAPI_WRITE|XFS_BMAPI_METADATA|
   XFS_BMAPI_CONTIG,
   args->firstblock, args->total, &map, &nmap,
   args->flist))) {
  return error;
 }
 ASSERT(nmap <= 1);
 if (nmap == 1) {
  mapp = &map;
  mapi = 1;
 }




 else if (nmap == 0 && count > 1) {
  mapp = kmem_alloc(sizeof(*mapp) * count, KM_SLEEP);
  for (b = bno, mapi = 0; b < bno + count; ) {
   nmap = MIN(XFS_BMAP_MAX_NMAP, count);
   c = (int)(bno + count - b);
   if ((error = xfs_bmapi(tp, dp, b, c,
     xfs_bmapi_aflag(w)|XFS_BMAPI_WRITE|
     XFS_BMAPI_METADATA,
     args->firstblock, args->total,
     &mapp[mapi], &nmap, args->flist))) {
    kmem_free(mapp);
    return error;
   }
   if (nmap < 1)
    break;
   mapi += nmap;
   b = mapp[mapi - 1].br_startoff +
       mapp[mapi - 1].br_blockcount;
  }
 } else {
  mapi = 0;
  mapp = ((void*)0);
 }



 for (i = 0, got = 0; i < mapi; i++)
  got += mapp[i].br_blockcount;
 if (got != count || mapp[0].br_startoff != bno ||
     mapp[mapi - 1].br_startoff + mapp[mapi - 1].br_blockcount !=
     bno + count) {
  if (mapp != &map)
   kmem_free(mapp);
  return XFS_ERROR(ENOSPC);
 }
 if (mapp != &map)
  kmem_free(mapp);

 args->total -= dp->i_d.di_nblocks - nblks;
 *new_blkno = (xfs_dablk_t)bno;
 return 0;
}
