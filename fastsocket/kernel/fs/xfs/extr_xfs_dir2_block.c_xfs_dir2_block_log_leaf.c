
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
typedef int xfs_mount_t ;
typedef int xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;
struct TYPE_8__ {int * data; } ;
typedef TYPE_2__ xfs_dabuf_t ;
typedef int uint ;


 int xfs_da_log_buf (TYPE_1__*,TYPE_2__*,int ,int ) ;
 int * xfs_dir2_block_leaf_p (int *) ;
 int * xfs_dir2_block_tail_p (int *,int *) ;

__attribute__((used)) static void
xfs_dir2_block_log_leaf(
 xfs_trans_t *tp,
 xfs_dabuf_t *bp,
 int first,
 int last)
{
 xfs_dir2_block_t *block;
 xfs_dir2_leaf_entry_t *blp;
 xfs_dir2_block_tail_t *btp;
 xfs_mount_t *mp;

 mp = tp->t_mountp;
 block = bp->data;
 btp = xfs_dir2_block_tail_p(mp, block);
 blp = xfs_dir2_block_leaf_p(btp);
 xfs_da_log_buf(tp, bp, (uint)((char *)&blp[first] - (char *)block),
  (uint)((char *)&blp[last + 1] - (char *)block - 1));
}
