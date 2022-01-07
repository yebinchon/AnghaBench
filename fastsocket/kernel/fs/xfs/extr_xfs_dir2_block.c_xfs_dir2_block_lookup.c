
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int xfs_mount_t ;
struct TYPE_15__ {int * i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_16__ {int address; } ;
typedef TYPE_2__ xfs_dir2_leaf_entry_t ;
struct TYPE_17__ {int namelen; int name; int inumber; } ;
typedef TYPE_3__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;
struct TYPE_18__ {int * data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
struct TYPE_19__ {int trans; int inumber; TYPE_1__* dp; } ;
typedef TYPE_5__ xfs_da_args_t ;


 int XFS_ERROR (int) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int trace_xfs_dir2_block_lookup (TYPE_5__*) ;
 int xfs_da_brelse (int ,TYPE_4__*) ;
 TYPE_2__* xfs_dir2_block_leaf_p (int *) ;
 int xfs_dir2_block_lookup_int (TYPE_5__*,TYPE_4__**,int*) ;
 int * xfs_dir2_block_tail_p (int *,int *) ;
 int xfs_dir2_data_check (TYPE_1__*,TYPE_4__*) ;
 int xfs_dir2_dataptr_to_off (int *,int ) ;
 int xfs_dir_cilookup_result (TYPE_5__*,int ,int ) ;

int
xfs_dir2_block_lookup(
 xfs_da_args_t *args)
{
 xfs_dir2_block_t *block;
 xfs_dir2_leaf_entry_t *blp;
 xfs_dabuf_t *bp;
 xfs_dir2_block_tail_t *btp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int ent;
 int error;
 xfs_mount_t *mp;

 trace_xfs_dir2_block_lookup(args);





 if ((error = xfs_dir2_block_lookup_int(args, &bp, &ent)))
  return error;
 dp = args->dp;
 mp = dp->i_mount;
 block = bp->data;
 xfs_dir2_data_check(dp, bp);
 btp = xfs_dir2_block_tail_p(mp, block);
 blp = xfs_dir2_block_leaf_p(btp);



 dep = (xfs_dir2_data_entry_t *)((char *)block +
  xfs_dir2_dataptr_to_off(mp, be32_to_cpu(blp[ent].address)));



 args->inumber = be64_to_cpu(dep->inumber);
 error = xfs_dir_cilookup_result(args, dep->name, dep->namelen);
 xfs_da_brelse(args->trans, bp);
 return XFS_ERROR(error);
}
