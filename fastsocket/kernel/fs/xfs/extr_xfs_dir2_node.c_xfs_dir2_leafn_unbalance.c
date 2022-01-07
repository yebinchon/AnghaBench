
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;


struct TYPE_20__ {int magic; } ;
struct TYPE_22__ {int count; scalar_t__ stale; TYPE_1__ info; } ;
struct TYPE_23__ {TYPE_3__ hdr; TYPE_2__* ents; } ;
typedef TYPE_4__ xfs_dir2_leaf_t ;
struct TYPE_24__ {TYPE_7__* args; } ;
typedef TYPE_5__ xfs_da_state_t ;
struct TYPE_25__ {scalar_t__ magic; TYPE_11__* bp; void* hashval; } ;
typedef TYPE_6__ xfs_da_state_blk_t ;
struct TYPE_26__ {int dp; } ;
typedef TYPE_7__ xfs_da_args_t ;
struct TYPE_21__ {int hashval; } ;
struct TYPE_19__ {TYPE_4__* data; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int xfs_dir2_leaf_compact (TYPE_7__*,TYPE_11__*) ;
 int xfs_dir2_leafn_check (int ,TYPE_11__*) ;
 int xfs_dir2_leafn_moveents (TYPE_7__*,TYPE_11__*,int ,TYPE_11__*,int,int) ;
 scalar_t__ xfs_dir2_leafn_order (TYPE_11__*,TYPE_11__*) ;

void
xfs_dir2_leafn_unbalance(
 xfs_da_state_t *state,
 xfs_da_state_blk_t *drop_blk,
 xfs_da_state_blk_t *save_blk)
{
 xfs_da_args_t *args;
 xfs_dir2_leaf_t *drop_leaf;
 xfs_dir2_leaf_t *save_leaf;

 args = state->args;
 ASSERT(drop_blk->magic == XFS_DIR2_LEAFN_MAGIC);
 ASSERT(save_blk->magic == XFS_DIR2_LEAFN_MAGIC);
 drop_leaf = drop_blk->bp->data;
 save_leaf = save_blk->bp->data;
 ASSERT(be16_to_cpu(drop_leaf->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);
 ASSERT(be16_to_cpu(save_leaf->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);




 if (drop_leaf->hdr.stale)
  xfs_dir2_leaf_compact(args, drop_blk->bp);
 if (save_leaf->hdr.stale)
  xfs_dir2_leaf_compact(args, save_blk->bp);



 drop_blk->hashval = be32_to_cpu(drop_leaf->ents[be16_to_cpu(drop_leaf->hdr.count) - 1].hashval);
 if (xfs_dir2_leafn_order(save_blk->bp, drop_blk->bp))
  xfs_dir2_leafn_moveents(args, drop_blk->bp, 0, save_blk->bp, 0,
   be16_to_cpu(drop_leaf->hdr.count));
 else
  xfs_dir2_leafn_moveents(args, drop_blk->bp, 0, save_blk->bp,
   be16_to_cpu(save_leaf->hdr.count), be16_to_cpu(drop_leaf->hdr.count));
 save_blk->hashval = be32_to_cpu(save_leaf->ents[be16_to_cpu(save_leaf->hdr.count) - 1].hashval);
 xfs_dir2_leafn_check(args->dp, save_blk->bp);
}
