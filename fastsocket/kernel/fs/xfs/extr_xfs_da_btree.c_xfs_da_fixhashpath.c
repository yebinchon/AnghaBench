
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ xfs_dahash_t ;
struct TYPE_20__ {TYPE_2__* args; } ;
typedef TYPE_4__ xfs_da_state_t ;
struct TYPE_21__ {int active; TYPE_6__* blk; } ;
typedef TYPE_5__ xfs_da_state_path_t ;
struct TYPE_22__ {int magic; size_t index; TYPE_9__* bp; scalar_t__ hashval; } ;
typedef TYPE_6__ xfs_da_state_blk_t ;
struct TYPE_23__ {int hashval; } ;
typedef TYPE_7__ xfs_da_node_entry_t ;
struct TYPE_17__ {int magic; } ;
struct TYPE_19__ {int count; TYPE_1__ info; } ;
struct TYPE_24__ {TYPE_3__ hdr; TYPE_7__* btree; } ;
typedef TYPE_8__ xfs_da_intnode_t ;
struct TYPE_25__ {TYPE_8__* data; } ;
struct TYPE_18__ {int trans; } ;


 int ASSERT (int) ;

 int XFS_DA_LOGRANGE (TYPE_8__*,TYPE_7__*,int) ;


 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 scalar_t__ xfs_attr_leaf_lasthash (TYPE_9__*,int*) ;
 int xfs_da_log_buf (int ,TYPE_9__*,int ) ;
 scalar_t__ xfs_da_node_lasthash (TYPE_9__*,int*) ;
 scalar_t__ xfs_dir2_leafn_lasthash (TYPE_9__*,int*) ;

void
xfs_da_fixhashpath(xfs_da_state_t *state, xfs_da_state_path_t *path)
{
 xfs_da_state_blk_t *blk;
 xfs_da_intnode_t *node;
 xfs_da_node_entry_t *btree;
 xfs_dahash_t lasthash=0;
 int level, count;

 level = path->active-1;
 blk = &path->blk[ level ];
 switch (blk->magic) {
 case 130:
  lasthash = xfs_attr_leaf_lasthash(blk->bp, &count);
  if (count == 0)
   return;
  break;
 case 128:
  lasthash = xfs_dir2_leafn_lasthash(blk->bp, &count);
  if (count == 0)
   return;
  break;
 case 129:
  lasthash = xfs_da_node_lasthash(blk->bp, &count);
  if (count == 0)
   return;
  break;
 }
 for (blk--, level--; level >= 0; blk--, level--) {
  node = blk->bp->data;
  ASSERT(be16_to_cpu(node->hdr.info.magic) == 129);
  btree = &node->btree[ blk->index ];
  if (be32_to_cpu(btree->hashval) == lasthash)
   break;
  blk->hashval = lasthash;
  btree->hashval = cpu_to_be32(lasthash);
  xfs_da_log_buf(state->args->trans, blk->bp,
      XFS_DA_LOGRANGE(node, btree, sizeof(*btree)));

  lasthash = be32_to_cpu(node->btree[be16_to_cpu(node->hdr.count)-1].hashval);
 }
}
