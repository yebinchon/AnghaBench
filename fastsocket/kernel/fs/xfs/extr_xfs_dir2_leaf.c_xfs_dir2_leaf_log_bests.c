
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int t_mountp; } ;
typedef TYPE_3__ xfs_trans_t ;
typedef int xfs_dir2_leaf_tail_t ;
struct TYPE_12__ {int magic; } ;
struct TYPE_11__ {TYPE_2__ info; } ;
struct TYPE_14__ {TYPE_1__ hdr; } ;
typedef TYPE_4__ xfs_dir2_leaf_t ;
struct TYPE_15__ {TYPE_4__* data; } ;
typedef TYPE_5__ xfs_dabuf_t ;
typedef int uint ;
typedef int __be16 ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ be16_to_cpu (int ) ;
 int xfs_da_log_buf (TYPE_3__*,TYPE_5__*,int ,int ) ;
 int * xfs_dir2_leaf_bests_p (int *) ;
 int * xfs_dir2_leaf_tail_p (int ,TYPE_4__*) ;

__attribute__((used)) static void
xfs_dir2_leaf_log_bests(
 xfs_trans_t *tp,
 xfs_dabuf_t *bp,
 int first,
 int last)
{
 __be16 *firstb;
 __be16 *lastb;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_tail_t *ltp;

 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_DIR2_LEAF1_MAGIC);
 ltp = xfs_dir2_leaf_tail_p(tp->t_mountp, leaf);
 firstb = xfs_dir2_leaf_bests_p(ltp) + first;
 lastb = xfs_dir2_leaf_bests_p(ltp) + last;
 xfs_da_log_buf(tp, bp, (uint)((char *)firstb - (char *)leaf),
  (uint)((char *)lastb - (char *)leaf + sizeof(*lastb) - 1));
}
