
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_18__ {int m_dirblkfsbs; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_17__ {scalar_t__ di_size; scalar_t__ di_nblocks; } ;
struct TYPE_19__ {TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef scalar_t__ xfs_fsize_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_drfsbno_t ;
typedef int xfs_dir2_db_t ;
typedef int xfs_dablk_t ;
struct TYPE_20__ {int total; int flist; int * firstblock; int * trans; TYPE_3__* dp; } ;
typedef TYPE_4__ xfs_da_args_t ;
struct TYPE_21__ {scalar_t__ br_startoff; scalar_t__ br_blockcount; } ;
typedef TYPE_5__ xfs_bmbt_irec_t ;


 int ASSERT (int) ;
 int ENOSPC ;
 int KM_SLEEP ;
 int MIN (int ,int) ;
 int XFS_BMAPI_CONTIG ;
 int XFS_BMAPI_METADATA ;
 int XFS_BMAPI_WRITE ;
 int XFS_BMAP_MAX_NMAP ;
 scalar_t__ XFS_B_TO_FSBT (TYPE_2__*,int) ;
 int XFS_DATA_FORK ;
 int XFS_DIR2_DATA_SPACE ;
 int XFS_DIR2_SPACE_SIZE ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_FSB_TO_B (TYPE_2__*,scalar_t__) ;
 int XFS_ILOG_CORE ;
 TYPE_5__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_5__*) ;
 int trace_xfs_dir2_grow_inode (TYPE_4__*,int) ;
 int xfs_bmap_first_unused (int *,TYPE_3__*,int,scalar_t__*,int ) ;
 int xfs_bmapi (int *,TYPE_3__*,scalar_t__,int,int,int *,int ,TYPE_5__*,int*,int ) ;
 int xfs_dir2_da_to_db (TYPE_2__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_3__*,int ) ;

int
xfs_dir2_grow_inode(
 xfs_da_args_t *args,
 int space,
 xfs_dir2_db_t *dbp)
{
 xfs_fileoff_t bno;
 int count;
 xfs_inode_t *dp;
 int error;
 int got;
 int i;
 xfs_bmbt_irec_t map;
 int mapi;
 xfs_bmbt_irec_t *mapp;
 xfs_mount_t *mp;
 int nmap;
 xfs_trans_t *tp;
 xfs_drfsbno_t nblks;

 trace_xfs_dir2_grow_inode(args, space);

 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;
 nblks = dp->i_d.di_nblocks;



 bno = XFS_B_TO_FSBT(mp, space * XFS_DIR2_SPACE_SIZE);
 count = mp->m_dirblkfsbs;



 if ((error = xfs_bmap_first_unused(tp, dp, count, &bno, XFS_DATA_FORK)))
  return error;
 nmap = 1;
 ASSERT(args->firstblock != ((void*)0));



 if ((error = xfs_bmapi(tp, dp, bno, count,
   XFS_BMAPI_WRITE|XFS_BMAPI_METADATA|XFS_BMAPI_CONTIG,
   args->firstblock, args->total, &map, &nmap,
   args->flist)))
  return error;
 ASSERT(nmap <= 1);
 if (nmap == 1) {
  mapp = &map;
  mapi = 1;
 }




 else if (nmap == 0 && count > 1) {
  xfs_fileoff_t b;




  mapp = kmem_alloc(sizeof(*mapp) * count, KM_SLEEP);



  for (b = bno, mapi = 0; b < bno + count; ) {
   int c;




   nmap = MIN(XFS_BMAP_MAX_NMAP, count);
   c = (int)(bno + count - b);
   if ((error = xfs_bmapi(tp, dp, b, c,
     XFS_BMAPI_WRITE|XFS_BMAPI_METADATA,
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
 }



 else {
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
 *dbp = xfs_dir2_da_to_db(mp, (xfs_dablk_t)bno);




 if (space == XFS_DIR2_DATA_SPACE) {
  xfs_fsize_t size;

  size = XFS_FSB_TO_B(mp, bno + count);
  if (size > dp->i_d.di_size) {
   dp->i_d.di_size = size;
   xfs_trans_log_inode(tp, dp, XFS_ILOG_CORE);
  }
 }
 return 0;
}
