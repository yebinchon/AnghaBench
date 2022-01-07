
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_28__ {int * if_data; } ;
struct TYPE_29__ {int if_flags; scalar_t__ if_bytes; TYPE_2__ if_u1; } ;
struct TYPE_27__ {scalar_t__ di_size; } ;
struct TYPE_31__ {TYPE_3__ i_df; TYPE_1__ i_d; int i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
typedef scalar_t__ xfs_ino_t ;
struct TYPE_30__ {int i8count; int count; int parent; } ;
struct TYPE_32__ {TYPE_4__ hdr; } ;
typedef TYPE_6__ xfs_dir2_sf_t ;
struct TYPE_33__ {int namelen; int name; } ;
typedef TYPE_7__ xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_ino8_t ;
typedef int xfs_dir2_ino4_t ;
struct TYPE_34__ {scalar_t__ inumber; int namelen; char* name; int op_flags; int trans; TYPE_5__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;
typedef int uint ;


 int ASSERT (int) ;
 int EIO ;
 int ENOENT ;
 scalar_t__ XFS_CMP_EXACT ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ;
 int XFS_ERROR (int ) ;
 int XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_IFINLINE ;
 int XFS_IFORK_DSIZE (TYPE_5__*) ;
 int XFS_ILOG_DDATA ;
 scalar_t__ offsetof (int ,int ) ;
 int parent ;
 int trace_xfs_dir2_sf_replace (TYPE_8__*) ;
 scalar_t__ xfs_da_compname (TYPE_8__*,int ,int ) ;
 int xfs_dir2_block_replace (TYPE_8__*) ;
 int xfs_dir2_sf_check (TYPE_8__*) ;
 TYPE_7__* xfs_dir2_sf_firstentry (TYPE_6__*) ;
 scalar_t__ xfs_dir2_sf_get_inumber (TYPE_6__*,int *) ;
 scalar_t__ xfs_dir2_sf_hdr_size (int) ;
 int xfs_dir2_sf_hdr_t ;
 int * xfs_dir2_sf_inumberp (TYPE_7__*) ;
 TYPE_7__* xfs_dir2_sf_nextentry (TYPE_6__*,TYPE_7__*) ;
 int xfs_dir2_sf_put_inumber (TYPE_6__*,scalar_t__*,int *) ;
 int xfs_dir2_sf_to_block (TYPE_8__*) ;
 int xfs_dir2_sf_toino4 (TYPE_8__*) ;
 int xfs_dir2_sf_toino8 (TYPE_8__*) ;
 int xfs_trans_log_inode (int ,TYPE_5__*,int ) ;

int
xfs_dir2_sf_replace(
 xfs_da_args_t *args)
{
 xfs_inode_t *dp;
 int i;






 xfs_dir2_sf_entry_t *sfep;
 xfs_dir2_sf_t *sfp;

 trace_xfs_dir2_sf_replace(args);

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
 ASSERT(args->namelen != 1 || args->name[0] != '.');



 if (args->namelen == 2 &&
     args->name[0] == '.' && args->name[1] == '.') {




  xfs_dir2_sf_put_inumber(sfp, &args->inumber, &sfp->hdr.parent);
 }



 else {
  for (i = 0, sfep = xfs_dir2_sf_firstentry(sfp);
    i < sfp->hdr.count;
    i++, sfep = xfs_dir2_sf_nextentry(sfp, sfep)) {
   if (xfs_da_compname(args, sfep->name, sfep->namelen) ==
        XFS_CMP_EXACT) {





    xfs_dir2_sf_put_inumber(sfp, &args->inumber,
     xfs_dir2_sf_inumberp(sfep));
    break;
   }
  }



  if (i == sfp->hdr.count) {
   ASSERT(args->op_flags & XFS_DA_OP_OKNOENT);




   return XFS_ERROR(ENOENT);
  }
 }
 xfs_dir2_sf_check(args);
 xfs_trans_log_inode(args->trans, dp, XFS_ILOG_DDATA);
 return 0;
}
