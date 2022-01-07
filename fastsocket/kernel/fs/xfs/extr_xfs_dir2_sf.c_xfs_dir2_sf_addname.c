
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ di_size; } ;
struct TYPE_20__ {int * if_data; } ;
struct TYPE_21__ {int if_flags; scalar_t__ if_bytes; TYPE_1__ if_u1; } ;
struct TYPE_24__ {TYPE_4__ i_d; TYPE_2__ i_df; int i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_22__ {scalar_t__ i8count; int count; } ;
struct TYPE_25__ {TYPE_3__ hdr; } ;
typedef TYPE_6__ xfs_dir2_sf_t ;
typedef int xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_ino8_t ;
typedef int xfs_dir2_ino4_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_26__ {scalar_t__ inumber; int op_flags; scalar_t__ total; int trans; int namelen; TYPE_5__* dp; } ;
typedef TYPE_7__ xfs_da_args_t ;
typedef int uint ;


 int ASSERT (int) ;
 int EIO ;
 scalar_t__ ENOENT ;
 int ENOSPC ;
 int XFS_DA_OP_JUSTCHECK ;
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ;
 int XFS_ERROR (int ) ;
 int XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_IFINLINE ;
 int XFS_IFORK_DSIZE (TYPE_5__*) ;
 int XFS_ILOG_CORE ;
 int XFS_ILOG_DDATA ;
 scalar_t__ offsetof (int ,int ) ;
 int parent ;
 int trace_xfs_dir2_sf_addname (TYPE_7__*) ;
 int xfs_dir2_block_addname (TYPE_7__*) ;
 int xfs_dir2_sf_addname_easy (TYPE_7__*,int *,int ,int) ;
 int xfs_dir2_sf_addname_hard (TYPE_7__*,int,int) ;
 int xfs_dir2_sf_addname_pick (TYPE_7__*,int,int **,int *) ;
 int xfs_dir2_sf_entsize_byname (TYPE_6__*,int ) ;
 scalar_t__ xfs_dir2_sf_hdr_size (scalar_t__) ;
 int xfs_dir2_sf_hdr_t ;
 scalar_t__ xfs_dir2_sf_lookup (TYPE_7__*) ;
 int xfs_dir2_sf_to_block (TYPE_7__*) ;
 int xfs_dir2_sf_toino8 (TYPE_7__*) ;
 int xfs_trans_log_inode (int ,TYPE_5__*,int) ;

int
xfs_dir2_sf_addname(
 xfs_da_args_t *args)
{
 int add_entsize;
 xfs_inode_t *dp;
 int error;
 int incr_isize;
 int new_isize;
 int objchange;
 xfs_dir2_data_aoff_t offset = 0;
 int old_isize;
 int pick;
 xfs_dir2_sf_t *sfp;
 xfs_dir2_sf_entry_t *sfep = ((void*)0);

 trace_xfs_dir2_sf_addname(args);

 ASSERT(xfs_dir2_sf_lookup(args) == ENOENT);
 dp = args->dp;
 ASSERT(dp->i_df.if_flags & XFS_IFINLINE);



 if (dp->i_d.di_size < offsetof(xfs_dir2_sf_hdr_t, parent)) {
  ASSERT(XFS_FORCED_SHUTDOWN(dp->i_mount));
  return XFS_ERROR(EIO);
 }
 ASSERT(dp->i_df.if_bytes == dp->i_d.di_size);
 ASSERT(dp->i_df.if_u1.if_data != ((void*)0));
 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
 ASSERT(dp->i_d.di_size >= xfs_dir2_sf_hdr_size(sfp->hdr.i8count));



 add_entsize = xfs_dir2_sf_entsize_byname(sfp, args->namelen);
 incr_isize = add_entsize;
 objchange = 0;
 old_isize = (int)dp->i_d.di_size;
 new_isize = old_isize + incr_isize;




 if (new_isize > XFS_IFORK_DSIZE(dp) ||
     (pick =
      xfs_dir2_sf_addname_pick(args, objchange, &sfep, &offset)) == 0) {



  if ((args->op_flags & XFS_DA_OP_JUSTCHECK) || args->total == 0)
   return XFS_ERROR(ENOSPC);



  error = xfs_dir2_sf_to_block(args);
  if (error)
   return error;
  return xfs_dir2_block_addname(args);
 }



 if (args->op_flags & XFS_DA_OP_JUSTCHECK)
  return 0;



 if (pick == 1)
  xfs_dir2_sf_addname_easy(args, sfep, offset, new_isize);




 else {
  ASSERT(pick == 2);




  xfs_dir2_sf_addname_hard(args, objchange, new_isize);
 }
 xfs_trans_log_inode(args->trans, dp, XFS_ILOG_CORE | XFS_ILOG_DDATA);
 return 0;
}
