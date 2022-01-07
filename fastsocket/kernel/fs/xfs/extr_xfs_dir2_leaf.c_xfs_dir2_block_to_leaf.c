
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_10__ ;


typedef int xfs_trans_t ;
struct TYPE_40__ {int m_dirblksize; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_41__ {TYPE_3__* i_mount; } ;
typedef TYPE_4__ xfs_inode_t ;
struct TYPE_42__ {void* bestcount; } ;
typedef TYPE_5__ xfs_dir2_leaf_tail_t ;
struct TYPE_39__ {TYPE_1__* bestfree; void* magic; void* count; void* stale; } ;
struct TYPE_43__ {TYPE_2__ hdr; int ents; } ;
typedef TYPE_6__ xfs_dir2_leaf_t ;
typedef int xfs_dir2_leaf_entry_t ;
typedef scalar_t__ xfs_dir2_db_t ;
typedef int xfs_dir2_data_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_44__ {int count; int stale; } ;
typedef TYPE_7__ xfs_dir2_block_tail_t ;
typedef TYPE_6__ xfs_dir2_block_t ;
struct TYPE_45__ {TYPE_6__* data; } ;
typedef TYPE_9__ xfs_dabuf_t ;
typedef int xfs_dablk_t ;
struct TYPE_37__ {int * trans; TYPE_4__* dp; } ;
typedef TYPE_10__ xfs_da_args_t ;
typedef int __be16 ;
struct TYPE_38__ {int length; } ;


 int ASSERT (int) ;
 int XFS_DIR2_DATA_MAGIC ;
 int XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR2_LEAF_FIRSTDB (TYPE_3__*) ;
 scalar_t__ be16_to_cpu (void*) ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,int *,int) ;
 int trace_xfs_dir2_block_to_leaf (TYPE_10__*) ;
 int xfs_da_buf_done (TYPE_9__*) ;
 int xfs_da_grow_inode (TYPE_10__*,int *) ;
 int * xfs_dir2_block_leaf_p (TYPE_7__*) ;
 TYPE_7__* xfs_dir2_block_tail_p (TYPE_3__*,TYPE_6__*) ;
 scalar_t__ xfs_dir2_da_to_db (TYPE_3__*,int ) ;
 int xfs_dir2_data_check (TYPE_4__*,TYPE_9__*) ;
 int xfs_dir2_data_freescan (TYPE_3__*,int *,int*) ;
 int xfs_dir2_data_log_header (int *,TYPE_9__*) ;
 int xfs_dir2_data_make_free (int *,TYPE_9__*,int ,int ,int*,int*) ;
 int * xfs_dir2_leaf_bests_p (TYPE_5__*) ;
 int xfs_dir2_leaf_check (TYPE_4__*,TYPE_9__*) ;
 int xfs_dir2_leaf_init (TYPE_10__*,scalar_t__,TYPE_9__**,int ) ;
 int xfs_dir2_leaf_log_bests (int *,TYPE_9__*,int ,int ) ;
 int xfs_dir2_leaf_log_ents (int *,TYPE_9__*,int ,scalar_t__) ;
 TYPE_5__* xfs_dir2_leaf_tail_p (TYPE_3__*,TYPE_6__*) ;

int
xfs_dir2_block_to_leaf(
 xfs_da_args_t *args,
 xfs_dabuf_t *dbp)
{
 __be16 *bestsp;
 xfs_dablk_t blkno;
 xfs_dir2_block_t *block;
 xfs_dir2_leaf_entry_t *blp;
 xfs_dir2_block_tail_t *btp;
 xfs_inode_t *dp;
 int error;
 xfs_dabuf_t *lbp;
 xfs_dir2_db_t ldb;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_tail_t *ltp;
 xfs_mount_t *mp;
 int needlog;
 int needscan;
 xfs_trans_t *tp;

 trace_xfs_dir2_block_to_leaf(args);

 dp = args->dp;
 mp = dp->i_mount;
 tp = args->trans;





 if ((error = xfs_da_grow_inode(args, &blkno))) {
  return error;
 }
 ldb = xfs_dir2_da_to_db(mp, blkno);
 ASSERT(ldb == XFS_DIR2_LEAF_FIRSTDB(mp));



 if ((error = xfs_dir2_leaf_init(args, ldb, &lbp, XFS_DIR2_LEAF1_MAGIC))) {
  return error;
 }
 ASSERT(lbp != ((void*)0));
 leaf = lbp->data;
 block = dbp->data;
 xfs_dir2_data_check(dp, dbp);
 btp = xfs_dir2_block_tail_p(mp, block);
 blp = xfs_dir2_block_leaf_p(btp);



 leaf->hdr.count = cpu_to_be16(be32_to_cpu(btp->count));
 leaf->hdr.stale = cpu_to_be16(be32_to_cpu(btp->stale));




 memcpy(leaf->ents, blp, be32_to_cpu(btp->count) * sizeof(xfs_dir2_leaf_entry_t));
 xfs_dir2_leaf_log_ents(tp, lbp, 0, be16_to_cpu(leaf->hdr.count) - 1);
 needscan = 0;
 needlog = 1;




 xfs_dir2_data_make_free(tp, dbp,
  (xfs_dir2_data_aoff_t)((char *)blp - (char *)block),
  (xfs_dir2_data_aoff_t)((char *)block + mp->m_dirblksize -
           (char *)blp),
  &needlog, &needscan);



 block->hdr.magic = cpu_to_be32(XFS_DIR2_DATA_MAGIC);
 if (needscan)
  xfs_dir2_data_freescan(mp, (xfs_dir2_data_t *)block, &needlog);



 ltp = xfs_dir2_leaf_tail_p(mp, leaf);
 ltp->bestcount = cpu_to_be32(1);
 bestsp = xfs_dir2_leaf_bests_p(ltp);
 bestsp[0] = block->hdr.bestfree[0].length;



 if (needlog)
  xfs_dir2_data_log_header(tp, dbp);
 xfs_dir2_leaf_check(dp, lbp);
 xfs_dir2_data_check(dp, dbp);
 xfs_dir2_leaf_log_bests(tp, lbp, 0, 0);
 xfs_da_buf_done(lbp);
 return 0;
}
