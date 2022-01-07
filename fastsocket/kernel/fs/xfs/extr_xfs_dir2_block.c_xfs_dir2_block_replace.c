
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int xfs_mount_t ;
struct TYPE_16__ {int * i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_17__ {int address; } ;
typedef TYPE_2__ xfs_dir2_leaf_entry_t ;
struct TYPE_18__ {int inumber; } ;
typedef TYPE_3__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;
struct TYPE_19__ {int * data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
struct TYPE_20__ {scalar_t__ inumber; int trans; TYPE_1__* dp; } ;
typedef TYPE_5__ xfs_da_args_t ;


 int ASSERT (int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int cpu_to_be64 (scalar_t__) ;
 int trace_xfs_dir2_block_replace (TYPE_5__*) ;
 int xfs_da_buf_done (TYPE_4__*) ;
 TYPE_2__* xfs_dir2_block_leaf_p (int *) ;
 int xfs_dir2_block_lookup_int (TYPE_5__*,TYPE_4__**,int*) ;
 int * xfs_dir2_block_tail_p (int *,int *) ;
 int xfs_dir2_data_check (TYPE_1__*,TYPE_4__*) ;
 int xfs_dir2_data_log_entry (int ,TYPE_4__*,TYPE_3__*) ;
 int xfs_dir2_dataptr_to_off (int *,int ) ;

int
xfs_dir2_block_replace(
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

 trace_xfs_dir2_block_replace(args);





 if ((error = xfs_dir2_block_lookup_int(args, &bp, &ent))) {
  return error;
 }
 dp = args->dp;
 mp = dp->i_mount;
 block = bp->data;
 btp = xfs_dir2_block_tail_p(mp, block);
 blp = xfs_dir2_block_leaf_p(btp);



 dep = (xfs_dir2_data_entry_t *)
       ((char *)block + xfs_dir2_dataptr_to_off(mp, be32_to_cpu(blp[ent].address)));
 ASSERT(be64_to_cpu(dep->inumber) != args->inumber);



 dep->inumber = cpu_to_be64(args->inumber);
 xfs_dir2_data_log_entry(args->trans, bp, dep);
 xfs_dir2_data_check(dp, bp);
 xfs_da_buf_done(bp);
 return 0;
}
