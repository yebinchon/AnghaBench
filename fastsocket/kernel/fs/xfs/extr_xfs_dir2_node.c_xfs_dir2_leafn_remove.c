
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_52__ TYPE_7__ ;
typedef struct TYPE_51__ TYPE_6__ ;
typedef struct TYPE_50__ TYPE_5__ ;
typedef struct TYPE_49__ TYPE_4__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;
typedef struct TYPE_45__ TYPE_13__ ;
typedef struct TYPE_44__ TYPE_12__ ;
typedef struct TYPE_43__ TYPE_11__ ;
typedef struct TYPE_42__ TYPE_10__ ;


typedef int xfs_trans_t ;
struct TYPE_49__ {int m_dirblksize; int m_dir_magicpct; } ;
typedef TYPE_4__ xfs_mount_t ;
struct TYPE_50__ {TYPE_4__* i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_46__ {void* magic; } ;
struct TYPE_48__ {void* stale; void* count; int nused; void* nvalid; TYPE_2__* bestfree; void* firstdb; void* magic; TYPE_1__ info; } ;
struct TYPE_51__ {TYPE_3__ hdr; void** bests; TYPE_7__* ents; } ;
typedef TYPE_6__ xfs_dir2_leaf_t ;
struct TYPE_52__ {void* address; } ;
typedef TYPE_7__ xfs_dir2_leaf_entry_t ;
typedef TYPE_6__ xfs_dir2_free_t ;
typedef scalar_t__ xfs_dir2_db_t ;
typedef TYPE_6__ xfs_dir2_data_t ;
struct TYPE_42__ {int namelen; } ;
typedef TYPE_10__ xfs_dir2_data_entry_t ;
struct TYPE_43__ {TYPE_6__* data; } ;
typedef TYPE_11__ xfs_dabuf_t ;
struct TYPE_44__ {scalar_t__ blkno; int index; TYPE_11__* bp; } ;
typedef TYPE_12__ xfs_da_state_blk_t ;
struct TYPE_45__ {scalar_t__ total; int * trans; TYPE_5__* dp; } ;
typedef TYPE_13__ xfs_da_args_t ;
typedef int uint ;
struct TYPE_47__ {void* length; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 scalar_t__ NULLDATAOFF ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_FREE_FIRSTDB (TYPE_4__*) ;
 int XFS_DIR2_FREE_MAGIC ;
 int XFS_DIR2_LEAFN_MAGIC ;
 scalar_t__ XFS_DIR2_MAX_FREE_BESTS (TYPE_4__*) ;
 int XFS_DIR2_NULL_DATAPTR ;
 int be16_add_cpu (void**,int) ;
 int be16_to_cpu (void*) ;
 int be32_add_cpu (int *,int) ;
 int be32_to_cpu (void*) ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int trace_xfs_dir2_leafn_remove (TYPE_13__*,int) ;
 int xfs_da_buf_done (TYPE_11__*) ;
 int xfs_da_read_buf (int *,TYPE_5__*,int ,int,TYPE_11__**,int ) ;
 int xfs_dir2_data_check (TYPE_5__*,TYPE_11__*) ;
 int xfs_dir2_data_entsize (int ) ;
 int xfs_dir2_data_freescan (TYPE_4__*,TYPE_6__*,int*) ;
 int xfs_dir2_data_log_header (int *,TYPE_11__*) ;
 int xfs_dir2_data_make_free (int *,TYPE_11__*,int,int ,int*,int*) ;
 scalar_t__ xfs_dir2_dataptr_to_db (TYPE_4__*,int) ;
 int xfs_dir2_dataptr_to_off (TYPE_4__*,int) ;
 int xfs_dir2_db_to_da (TYPE_4__*,scalar_t__) ;
 scalar_t__ xfs_dir2_db_to_fdb (TYPE_4__*,scalar_t__) ;
 int xfs_dir2_db_to_fdindex (TYPE_4__*,scalar_t__) ;
 int xfs_dir2_free_log_bests (int *,TYPE_11__*,int,int) ;
 int xfs_dir2_free_log_header (int *,TYPE_11__*) ;
 int xfs_dir2_leaf_log_ents (int *,TYPE_11__*,int,int) ;
 int xfs_dir2_leaf_log_header (int *,TYPE_11__*) ;
 int xfs_dir2_leafn_check (TYPE_5__*,TYPE_11__*) ;
 int xfs_dir2_shrink_inode (TYPE_13__*,scalar_t__,TYPE_11__*) ;

__attribute__((used)) static int
xfs_dir2_leafn_remove(
 xfs_da_args_t *args,
 xfs_dabuf_t *bp,
 int index,
 xfs_da_state_blk_t *dblk,
 int *rval)
{
 xfs_dir2_data_t *data;
 xfs_dir2_db_t db;
 xfs_dabuf_t *dbp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 int longest;
 int off;
 xfs_mount_t *mp;
 int needlog;
 int needscan;
 xfs_trans_t *tp;

 trace_xfs_dir2_leafn_remove(args, index);

 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;
 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);



 lep = &leaf->ents[index];



 db = xfs_dir2_dataptr_to_db(mp, be32_to_cpu(lep->address));
 ASSERT(dblk->blkno == db);
 off = xfs_dir2_dataptr_to_off(mp, be32_to_cpu(lep->address));
 ASSERT(dblk->index == off);




 be16_add_cpu(&leaf->hdr.stale, 1);
 xfs_dir2_leaf_log_header(tp, bp);
 lep->address = cpu_to_be32(XFS_DIR2_NULL_DATAPTR);
 xfs_dir2_leaf_log_ents(tp, bp, index, index);




 dbp = dblk->bp;
 data = dbp->data;
 dep = (xfs_dir2_data_entry_t *)((char *)data + off);
 longest = be16_to_cpu(data->hdr.bestfree[0].length);
 needlog = needscan = 0;
 xfs_dir2_data_make_free(tp, dbp, off,
  xfs_dir2_data_entsize(dep->namelen), &needlog, &needscan);




 if (needscan)
  xfs_dir2_data_freescan(mp, data, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(tp, dbp);
 xfs_dir2_data_check(dp, dbp);




 if (longest < be16_to_cpu(data->hdr.bestfree[0].length)) {
  int error;
  xfs_dabuf_t *fbp;
  xfs_dir2_db_t fdb;
  int findex;
  xfs_dir2_free_t *free;
  int logfree;





  fdb = xfs_dir2_db_to_fdb(mp, db);
  if ((error = xfs_da_read_buf(tp, dp, xfs_dir2_db_to_da(mp, fdb),
    -1, &fbp, XFS_DATA_FORK))) {
   return error;
  }
  free = fbp->data;
  ASSERT(be32_to_cpu(free->hdr.magic) == XFS_DIR2_FREE_MAGIC);
  ASSERT(be32_to_cpu(free->hdr.firstdb) ==
         XFS_DIR2_MAX_FREE_BESTS(mp) *
         (fdb - XFS_DIR2_FREE_FIRSTDB(mp)));



  findex = xfs_dir2_db_to_fdindex(mp, db);
  longest = be16_to_cpu(data->hdr.bestfree[0].length);




  if (longest == mp->m_dirblksize - (uint)sizeof(data->hdr)) {



   error = xfs_dir2_shrink_inode(args, db, dbp);
   if (error == 0) {
    dblk->bp = ((void*)0);
    data = ((void*)0);
   }





   else if (error == ENOSPC && args->total == 0)
    xfs_da_buf_done(dbp);
   else
    return error;
  }




  if (data == ((void*)0)) {



   be32_add_cpu(&free->hdr.nused, -1);
   xfs_dir2_free_log_header(tp, fbp);






   if (findex == be32_to_cpu(free->hdr.nvalid) - 1) {
    int i;

    for (i = findex - 1;
         i >= 0 && be16_to_cpu(free->bests[i]) == NULLDATAOFF;
         i--)
     continue;
    free->hdr.nvalid = cpu_to_be32(i + 1);
    logfree = 0;
   }



   else {
    free->bests[findex] = cpu_to_be16(NULLDATAOFF);
    logfree = 1;
   }




   if (!free->hdr.nused) {
    error = xfs_dir2_shrink_inode(args, fdb, fbp);
    if (error == 0) {
     fbp = ((void*)0);
     logfree = 0;
    } else if (error != ENOSPC || args->total != 0)
     return error;





   }
  }




  else {
   free->bests[findex] = cpu_to_be16(longest);
   logfree = 1;
  }



  if (logfree)
   xfs_dir2_free_log_bests(tp, fbp, findex, findex);



  if (fbp)
   xfs_da_buf_done(fbp);
 }
 xfs_dir2_leafn_check(dp, bp);




 *rval =
  ((uint)sizeof(leaf->hdr) +
   (uint)sizeof(leaf->ents[0]) *
   (be16_to_cpu(leaf->hdr.count) - be16_to_cpu(leaf->hdr.stale))) <
  mp->m_dir_magicpct;
 return 0;
}
