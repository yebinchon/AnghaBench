
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_50__ TYPE_9__ ;
typedef struct TYPE_49__ TYPE_7__ ;
typedef struct TYPE_48__ TYPE_6__ ;
typedef struct TYPE_47__ TYPE_5__ ;
typedef struct TYPE_46__ TYPE_4__ ;
typedef struct TYPE_45__ TYPE_3__ ;
typedef struct TYPE_44__ TYPE_2__ ;
typedef struct TYPE_43__ TYPE_1__ ;
typedef struct TYPE_42__ TYPE_11__ ;
typedef struct TYPE_41__ TYPE_10__ ;


typedef int xfs_trans_t ;
struct TYPE_45__ {scalar_t__ m_dirblksize; size_t m_dirdatablk; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_46__ {TYPE_3__* i_mount; } ;
typedef TYPE_4__ xfs_inode_t ;
struct TYPE_47__ {int bestcount; } ;
typedef TYPE_5__ xfs_dir2_leaf_tail_t ;
struct TYPE_44__ {TYPE_1__* bestfree; int stale; } ;
struct TYPE_48__ {TYPE_2__ hdr; TYPE_7__* ents; } ;
typedef TYPE_6__ xfs_dir2_leaf_t ;
struct TYPE_49__ {int address; } ;
typedef TYPE_7__ xfs_dir2_leaf_entry_t ;
typedef size_t xfs_dir2_db_t ;
typedef TYPE_6__ xfs_dir2_data_t ;
typedef scalar_t__ xfs_dir2_data_off_t ;
struct TYPE_50__ {int namelen; } ;
typedef TYPE_9__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_41__ {TYPE_6__* data; } ;
typedef TYPE_10__ xfs_dabuf_t ;
struct TYPE_42__ {scalar_t__ total; int * trans; TYPE_4__* dp; } ;
typedef TYPE_11__ xfs_da_args_t ;
typedef scalar_t__ uint ;
typedef int __be16 ;
struct TYPE_43__ {int length; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 scalar_t__ NULLDATAOFF ;
 int XFS_DIR2_NULL_DATAPTR ;
 int be16_add_cpu (int *,int) ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_add_cpu (int *,size_t) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be16 (scalar_t__) ;
 int cpu_to_be32 (int ) ;
 int memmove (int *,int *,size_t) ;
 int trace_xfs_dir2_leaf_removename (TYPE_11__*) ;
 int xfs_da_buf_done (TYPE_10__*) ;
 int xfs_dir2_data_check (TYPE_4__*,TYPE_10__*) ;
 int xfs_dir2_data_entsize (int ) ;
 int xfs_dir2_data_freescan (TYPE_3__*,TYPE_6__*,int*) ;
 int xfs_dir2_data_log_header (int *,TYPE_10__*) ;
 int xfs_dir2_data_make_free (int *,TYPE_10__*,int ,int ,int*,int*) ;
 size_t xfs_dir2_dataptr_to_db (TYPE_3__*,int) ;
 int xfs_dir2_dataptr_to_off (TYPE_3__*,int) ;
 int * xfs_dir2_leaf_bests_p (TYPE_5__*) ;
 int xfs_dir2_leaf_check (TYPE_4__*,TYPE_10__*) ;
 int xfs_dir2_leaf_log_bests (int *,TYPE_10__*,size_t,int) ;
 int xfs_dir2_leaf_log_ents (int *,TYPE_10__*,int,int) ;
 int xfs_dir2_leaf_log_header (int *,TYPE_10__*) ;
 int xfs_dir2_leaf_log_tail (int *,TYPE_10__*) ;
 int xfs_dir2_leaf_lookup_int (TYPE_11__*,TYPE_10__**,int*,TYPE_10__**) ;
 TYPE_5__* xfs_dir2_leaf_tail_p (TYPE_3__*,TYPE_6__*) ;
 int xfs_dir2_leaf_to_block (TYPE_11__*,TYPE_10__*,TYPE_10__*) ;
 int xfs_dir2_shrink_inode (TYPE_11__*,size_t,TYPE_10__*) ;

int
xfs_dir2_leaf_removename(
 xfs_da_args_t *args)
{
 __be16 *bestsp;
 xfs_dir2_data_t *data;
 xfs_dir2_db_t db;
 xfs_dabuf_t *dbp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int error;
 xfs_dir2_db_t i;
 int index;
 xfs_dabuf_t *lbp;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 xfs_dir2_leaf_tail_t *ltp;
 xfs_mount_t *mp;
 int needlog;
 int needscan;
 xfs_dir2_data_off_t oldbest;
 xfs_trans_t *tp;

 trace_xfs_dir2_leaf_removename(args);




 if ((error = xfs_dir2_leaf_lookup_int(args, &lbp, &index, &dbp))) {
  return error;
 }
 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;
 leaf = lbp->data;
 data = dbp->data;
 xfs_dir2_data_check(dp, dbp);



 lep = &leaf->ents[index];
 db = xfs_dir2_dataptr_to_db(mp, be32_to_cpu(lep->address));
 dep = (xfs_dir2_data_entry_t *)
       ((char *)data + xfs_dir2_dataptr_to_off(mp, be32_to_cpu(lep->address)));
 needscan = needlog = 0;
 oldbest = be16_to_cpu(data->hdr.bestfree[0].length);
 ltp = xfs_dir2_leaf_tail_p(mp, leaf);
 bestsp = xfs_dir2_leaf_bests_p(ltp);
 ASSERT(be16_to_cpu(bestsp[db]) == oldbest);



 xfs_dir2_data_make_free(tp, dbp,
  (xfs_dir2_data_aoff_t)((char *)dep - (char *)data),
  xfs_dir2_data_entsize(dep->namelen), &needlog, &needscan);



 be16_add_cpu(&leaf->hdr.stale, 1);
 xfs_dir2_leaf_log_header(tp, lbp);
 lep->address = cpu_to_be32(XFS_DIR2_NULL_DATAPTR);
 xfs_dir2_leaf_log_ents(tp, lbp, index, index);




 if (needscan)
  xfs_dir2_data_freescan(mp, data, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(tp, dbp);




 if (be16_to_cpu(data->hdr.bestfree[0].length) != oldbest) {
  bestsp[db] = data->hdr.bestfree[0].length;
  xfs_dir2_leaf_log_bests(tp, lbp, db, db);
 }
 xfs_dir2_data_check(dp, dbp);



 if (be16_to_cpu(data->hdr.bestfree[0].length) ==
     mp->m_dirblksize - (uint)sizeof(data->hdr)) {
  ASSERT(db != mp->m_dirdatablk);
  if ((error = xfs_dir2_shrink_inode(args, db, dbp))) {






   if (error == ENOSPC && args->total == 0) {
    xfs_da_buf_done(dbp);
    error = 0;
   }
   xfs_dir2_leaf_check(dp, lbp);
   xfs_da_buf_done(lbp);
   return error;
  }
  dbp = ((void*)0);




  if (db == be32_to_cpu(ltp->bestcount) - 1) {



   for (i = db - 1; i > 0; i--) {
    if (be16_to_cpu(bestsp[i]) != NULLDATAOFF)
     break;
   }




   memmove(&bestsp[db - i], bestsp,
    (be32_to_cpu(ltp->bestcount) - (db - i)) * sizeof(*bestsp));
   be32_add_cpu(&ltp->bestcount, -(db - i));
   xfs_dir2_leaf_log_tail(tp, lbp);
   xfs_dir2_leaf_log_bests(tp, lbp, 0, be32_to_cpu(ltp->bestcount) - 1);
  } else
   bestsp[db] = cpu_to_be16(NULLDATAOFF);
 }



 else if (db != mp->m_dirdatablk && dbp != ((void*)0)) {
  xfs_da_buf_done(dbp);
  dbp = ((void*)0);
 }
 xfs_dir2_leaf_check(dp, lbp);



 return xfs_dir2_leaf_to_block(args, lbp, dbp);
}
