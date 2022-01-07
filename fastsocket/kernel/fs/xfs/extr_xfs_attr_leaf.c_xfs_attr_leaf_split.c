
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xfs_dablk_t ;
struct TYPE_12__ {int args; scalar_t__ inleaf; } ;
typedef TYPE_1__ xfs_da_state_t ;
struct TYPE_13__ {scalar_t__ magic; int bp; void* hashval; int blkno; } ;
typedef TYPE_2__ xfs_da_state_blk_t ;


 int ASSERT (int) ;
 scalar_t__ XFS_ATTR_LEAF_MAGIC ;
 int trace_xfs_attr_leaf_add_new (int ) ;
 int trace_xfs_attr_leaf_add_old (int ) ;
 int trace_xfs_attr_leaf_split (int ) ;
 int xfs_attr_leaf_add (int ,int ) ;
 int xfs_attr_leaf_create (int ,int ,int *) ;
 void* xfs_attr_leaf_lasthash (int ,int *) ;
 int xfs_attr_leaf_rebalance (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int xfs_da_blk_link (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int xfs_da_grow_inode (int ,int *) ;

int
xfs_attr_leaf_split(xfs_da_state_t *state, xfs_da_state_blk_t *oldblk,
       xfs_da_state_blk_t *newblk)
{
 xfs_dablk_t blkno;
 int error;

 trace_xfs_attr_leaf_split(state->args);




 ASSERT(oldblk->magic == XFS_ATTR_LEAF_MAGIC);
 error = xfs_da_grow_inode(state->args, &blkno);
 if (error)
  return(error);
 error = xfs_attr_leaf_create(state->args, blkno, &newblk->bp);
 if (error)
  return(error);
 newblk->blkno = blkno;
 newblk->magic = XFS_ATTR_LEAF_MAGIC;





 xfs_attr_leaf_rebalance(state, oldblk, newblk);
 error = xfs_da_blk_link(state, oldblk, newblk);
 if (error)
  return(error);
 if (state->inleaf) {
  trace_xfs_attr_leaf_add_old(state->args);
  error = xfs_attr_leaf_add(oldblk->bp, state->args);
 } else {
  trace_xfs_attr_leaf_add_new(state->args);
  error = xfs_attr_leaf_add(newblk->bp, state->args);
 }




 oldblk->hashval = xfs_attr_leaf_lasthash(oldblk->bp, ((void*)0));
 newblk->hashval = xfs_attr_leaf_lasthash(newblk->bp, ((void*)0));
 return(error);
}
