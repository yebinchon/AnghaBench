
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_16__ {int i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_17__ {TYPE_3__* ents; } ;
typedef TYPE_2__ xfs_dir2_leaf_t ;
struct TYPE_18__ {int address; } ;
typedef TYPE_3__ xfs_dir2_leaf_entry_t ;
struct TYPE_19__ {int namelen; int name; int inumber; } ;
typedef TYPE_4__ xfs_dir2_data_entry_t ;
struct TYPE_20__ {TYPE_2__* data; } ;
typedef TYPE_5__ xfs_dabuf_t ;
struct TYPE_21__ {int inumber; TYPE_1__* dp; int * trans; } ;
typedef TYPE_6__ xfs_da_args_t ;


 int XFS_ERROR (int) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int trace_xfs_dir2_leaf_lookup (TYPE_6__*) ;
 int xfs_da_brelse (int *,TYPE_5__*) ;
 int xfs_dir2_dataptr_to_off (int ,int ) ;
 int xfs_dir2_leaf_check (TYPE_1__*,TYPE_5__*) ;
 int xfs_dir2_leaf_lookup_int (TYPE_6__*,TYPE_5__**,int*,TYPE_5__**) ;
 int xfs_dir_cilookup_result (TYPE_6__*,int ,int ) ;

int
xfs_dir2_leaf_lookup(
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

 trace_xfs_dir2_leaf_lookup(args);




 if ((error = xfs_dir2_leaf_lookup_int(args, &lbp, &index, &dbp))) {
  return error;
 }
 tp = args->trans;
 dp = args->dp;
 xfs_dir2_leaf_check(dp, lbp);
 leaf = lbp->data;



 lep = &leaf->ents[index];



 dep = (xfs_dir2_data_entry_t *)
       ((char *)dbp->data +
        xfs_dir2_dataptr_to_off(dp->i_mount, be32_to_cpu(lep->address)));



 args->inumber = be64_to_cpu(dep->inumber);
 error = xfs_dir_cilookup_result(args, dep->name, dep->namelen);
 xfs_da_brelse(tp, dbp);
 xfs_da_brelse(tp, lbp);
 return XFS_ERROR(error);
}
