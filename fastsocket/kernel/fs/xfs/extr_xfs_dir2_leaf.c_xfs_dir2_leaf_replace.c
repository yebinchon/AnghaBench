
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_18__ {int i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_19__ {TYPE_3__* ents; } ;
typedef TYPE_2__ xfs_dir2_leaf_t ;
struct TYPE_20__ {int address; } ;
typedef TYPE_3__ xfs_dir2_leaf_entry_t ;
struct TYPE_21__ {int inumber; } ;
typedef TYPE_4__ xfs_dir2_data_entry_t ;
struct TYPE_22__ {TYPE_2__* data; } ;
typedef TYPE_5__ xfs_dabuf_t ;
struct TYPE_23__ {scalar_t__ inumber; int * trans; TYPE_1__* dp; } ;
typedef TYPE_6__ xfs_da_args_t ;


 int ASSERT (int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int cpu_to_be64 (scalar_t__) ;
 int trace_xfs_dir2_leaf_replace (TYPE_6__*) ;
 int xfs_da_brelse (int *,TYPE_5__*) ;
 int xfs_da_buf_done (TYPE_5__*) ;
 int xfs_dir2_data_log_entry (int *,TYPE_5__*,TYPE_4__*) ;
 int xfs_dir2_dataptr_to_off (int ,int ) ;
 int xfs_dir2_leaf_check (TYPE_1__*,TYPE_5__*) ;
 int xfs_dir2_leaf_lookup_int (TYPE_6__*,TYPE_5__**,int*,TYPE_5__**) ;

int
xfs_dir2_leaf_replace(
 xfs_da_args_t *args)
{
 xfs_dabuf_t *dbp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int error;
 int index;
 xfs_dabuf_t *lbp;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 xfs_trans_t *tp;

 trace_xfs_dir2_leaf_replace(args);




 if ((error = xfs_dir2_leaf_lookup_int(args, &lbp, &index, &dbp))) {
  return error;
 }
 dp = args->dp;
 leaf = lbp->data;



 lep = &leaf->ents[index];



 dep = (xfs_dir2_data_entry_t *)
       ((char *)dbp->data +
        xfs_dir2_dataptr_to_off(dp->i_mount, be32_to_cpu(lep->address)));
 ASSERT(args->inumber != be64_to_cpu(dep->inumber));



 dep->inumber = cpu_to_be64(args->inumber);
 tp = args->trans;
 xfs_dir2_data_log_entry(tp, dbp, dep);
 xfs_da_buf_done(dbp);
 xfs_dir2_leaf_check(dp, lbp);
 xfs_da_brelse(tp, lbp);
 return 0;
}
