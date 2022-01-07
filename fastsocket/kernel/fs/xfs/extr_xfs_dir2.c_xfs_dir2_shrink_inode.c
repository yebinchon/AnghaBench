
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_15__ {scalar_t__ m_dirdatablk; int m_dirblkfsbs; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_14__ {scalar_t__ di_size; } ;
struct TYPE_16__ {TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_dir2_db_t ;
typedef int xfs_dabuf_t ;
typedef scalar_t__ xfs_dablk_t ;
struct TYPE_17__ {int flist; int firstblock; int * trans; TYPE_3__* dp; } ;
typedef TYPE_4__ xfs_da_args_t ;


 int ASSERT (int) ;
 int XFS_BMAPI_METADATA ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_LEAF_FIRSTDB (TYPE_2__*) ;
 scalar_t__ XFS_FSB_TO_B (TYPE_2__*,scalar_t__) ;
 int XFS_ILOG_CORE ;
 int trace_xfs_dir2_shrink_inode (TYPE_4__*,scalar_t__) ;
 int xfs_bmap_last_before (int *,TYPE_3__*,scalar_t__*,int ) ;
 int xfs_bunmapi (int *,TYPE_3__*,scalar_t__,int ,int ,int ,int ,int ,int*) ;
 int xfs_da_binval (int *,int *) ;
 scalar_t__ xfs_dir2_db_off_to_byte (TYPE_2__*,scalar_t__,int ) ;
 scalar_t__ xfs_dir2_db_to_da (TYPE_2__*,scalar_t__) ;
 int xfs_trans_log_inode (int *,TYPE_3__*,int ) ;

int
xfs_dir2_shrink_inode(
 xfs_da_args_t *args,
 xfs_dir2_db_t db,
 xfs_dabuf_t *bp)
{
 xfs_fileoff_t bno;
 xfs_dablk_t da;
 int done;
 xfs_inode_t *dp;
 int error;
 xfs_mount_t *mp;
 xfs_trans_t *tp;

 trace_xfs_dir2_shrink_inode(args, db);

 dp = args->dp;
 mp = dp->i_mount;
 tp = args->trans;
 da = xfs_dir2_db_to_da(mp, db);



 if ((error = xfs_bunmapi(tp, dp, da, mp->m_dirblkfsbs,
   XFS_BMAPI_METADATA, 0, args->firstblock, args->flist,
   &done))) {
  return error;
 }
 ASSERT(done);



 xfs_da_binval(tp, bp);



 if (db >= XFS_DIR2_LEAF_FIRSTDB(mp))
  return 0;



 if (dp->i_d.di_size > xfs_dir2_db_off_to_byte(mp, db + 1, 0))
  return 0;
 bno = da;
 if ((error = xfs_bmap_last_before(tp, dp, &bno, XFS_DATA_FORK))) {



  return error;
 }
 if (db == mp->m_dirdatablk)
  ASSERT(bno == 0);
 else
  ASSERT(bno > 0);



 dp->i_d.di_size = XFS_FSB_TO_B(mp, bno);
 xfs_trans_log_inode(tp, dp, XFS_ILOG_CORE);
 return 0;
}
