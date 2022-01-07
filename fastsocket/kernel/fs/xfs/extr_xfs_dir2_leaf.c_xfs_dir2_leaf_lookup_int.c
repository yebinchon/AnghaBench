
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_28__ {TYPE_2__* m_dirnameops; int m_dirleafblk; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_29__ {TYPE_3__* i_mount; } ;
typedef TYPE_4__ xfs_inode_t ;
struct TYPE_26__ {int count; } ;
struct TYPE_30__ {TYPE_1__ hdr; TYPE_6__* ents; } ;
typedef TYPE_5__ xfs_dir2_leaf_t ;
struct TYPE_31__ {int address; int hashval; } ;
typedef TYPE_6__ xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_db_t ;
struct TYPE_32__ {int namelen; int name; } ;
typedef TYPE_7__ xfs_dir2_data_entry_t ;
struct TYPE_33__ {TYPE_5__* data; } ;
typedef TYPE_8__ xfs_dabuf_t ;
struct TYPE_34__ {scalar_t__ hashval; int cmpresult; int op_flags; int * trans; TYPE_4__* dp; } ;
typedef TYPE_9__ xfs_da_args_t ;
typedef enum xfs_dacmp { ____Placeholder_xfs_dacmp } xfs_dacmp ;
struct TYPE_27__ {int (* compname ) (TYPE_9__*,int ,int ) ;} ;


 int ASSERT (int) ;
 int ENOENT ;
 scalar_t__ XFS_CMP_CASE ;
 int XFS_CMP_DIFFERENT ;
 int XFS_CMP_EXACT ;
 int XFS_DATA_FORK ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_DIR2_NULL_DATAPTR ;
 int XFS_ERROR (int ) ;
 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int stub1 (TYPE_9__*,int ,int ) ;
 int xfs_da_brelse (int *,TYPE_8__*) ;
 int xfs_da_read_buf (int *,TYPE_4__*,int ,int,TYPE_8__**,int ) ;
 int xfs_dir2_data_check (TYPE_4__*,TYPE_8__*) ;
 int xfs_dir2_dataptr_to_db (TYPE_3__*,scalar_t__) ;
 int xfs_dir2_dataptr_to_off (TYPE_3__*,scalar_t__) ;
 int xfs_dir2_db_to_da (TYPE_3__*,int) ;
 int xfs_dir2_leaf_check (TYPE_4__*,TYPE_8__*) ;
 int xfs_dir2_leaf_search_hash (TYPE_9__*,TYPE_8__*) ;

__attribute__((used)) static int
xfs_dir2_leaf_lookup_int(
 xfs_da_args_t *args,
 xfs_dabuf_t **lbpp,
 int *indexp,
 xfs_dabuf_t **dbpp)
{
 xfs_dir2_db_t curdb = -1;
 xfs_dabuf_t *dbp = ((void*)0);
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int error;
 int index;
 xfs_dabuf_t *lbp;
 xfs_dir2_leaf_entry_t *lep;
 xfs_dir2_leaf_t *leaf;
 xfs_mount_t *mp;
 xfs_dir2_db_t newdb;
 xfs_trans_t *tp;
 xfs_dir2_db_t cidb = -1;
 enum xfs_dacmp cmp;

 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;



 error = xfs_da_read_buf(tp, dp, mp->m_dirleafblk, -1, &lbp,
       XFS_DATA_FORK);
 if (error)
  return error;
 *lbpp = lbp;
 leaf = lbp->data;
 xfs_dir2_leaf_check(dp, lbp);



 index = xfs_dir2_leaf_search_hash(args, lbp);




 for (lep = &leaf->ents[index]; index < be16_to_cpu(leaf->hdr.count) &&
    be32_to_cpu(lep->hashval) == args->hashval;
    lep++, index++) {



  if (be32_to_cpu(lep->address) == XFS_DIR2_NULL_DATAPTR)
   continue;



  newdb = xfs_dir2_dataptr_to_db(mp, be32_to_cpu(lep->address));




  if (newdb != curdb) {
   if (dbp)
    xfs_da_brelse(tp, dbp);
   error = xfs_da_read_buf(tp, dp,
      xfs_dir2_db_to_da(mp, newdb),
      -1, &dbp, XFS_DATA_FORK);
   if (error) {
    xfs_da_brelse(tp, lbp);
    return error;
   }
   xfs_dir2_data_check(dp, dbp);
   curdb = newdb;
  }



  dep = (xfs_dir2_data_entry_t *)((char *)dbp->data +
   xfs_dir2_dataptr_to_off(mp, be32_to_cpu(lep->address)));





  cmp = mp->m_dirnameops->compname(args, dep->name, dep->namelen);
  if (cmp != XFS_CMP_DIFFERENT && cmp != args->cmpresult) {
   args->cmpresult = cmp;
   *indexp = index;

   if (cmp == XFS_CMP_EXACT) {
    *dbpp = dbp;
    return 0;
   }
   cidb = curdb;
  }
 }
 ASSERT(args->op_flags & XFS_DA_OP_OKNOENT);





 if (args->cmpresult == XFS_CMP_CASE) {
  ASSERT(cidb != -1);
  if (cidb != curdb) {
   xfs_da_brelse(tp, dbp);
   error = xfs_da_read_buf(tp, dp,
      xfs_dir2_db_to_da(mp, cidb),
      -1, &dbp, XFS_DATA_FORK);
   if (error) {
    xfs_da_brelse(tp, lbp);
    return error;
   }
  }
  *dbpp = dbp;
  return 0;
 }



 ASSERT(cidb == -1);
 if (dbp)
  xfs_da_brelse(tp, dbp);
 xfs_da_brelse(tp, lbp);
 return XFS_ERROR(ENOENT);
}
