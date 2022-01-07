
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_18__ ;


struct TYPE_26__ {size_t active; TYPE_2__* blk; } ;
struct TYPE_27__ {TYPE_18__ path; int args; TYPE_18__ altpath; } ;
typedef TYPE_1__ xfs_da_state_t ;
struct TYPE_28__ {scalar_t__ magic; int * bp; int blkno; } ;
typedef TYPE_2__ xfs_da_state_blk_t ;


 int ASSERT (int) ;



 int trace_xfs_da_join (int ) ;
 int xfs_attr_leaf_toosmall (TYPE_1__*,int*) ;
 int xfs_attr_leaf_unbalance (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int xfs_da_blk_unlink (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int xfs_da_fixhashpath (TYPE_1__*,TYPE_18__*) ;
 int xfs_da_node_remove (TYPE_1__*,TYPE_2__*) ;
 int xfs_da_node_toosmall (TYPE_1__*,int*) ;
 int xfs_da_node_unbalance (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int xfs_da_root_join (TYPE_1__*,TYPE_2__*) ;
 int xfs_da_shrink_inode (int ,int ,int *) ;
 int xfs_da_state_kill_altpath (TYPE_1__*) ;
 int xfs_dir2_leafn_toosmall (TYPE_1__*,int*) ;
 int xfs_dir2_leafn_unbalance (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;

int
xfs_da_join(xfs_da_state_t *state)
{
 xfs_da_state_blk_t *drop_blk, *save_blk;
 int action, error;

 trace_xfs_da_join(state->args);

 action = 0;
 drop_blk = &state->path.blk[ state->path.active-1 ];
 save_blk = &state->altpath.blk[ state->path.active-1 ];
 ASSERT(state->path.blk[0].magic == 129);
 ASSERT(drop_blk->magic == 130 ||
        drop_blk->magic == 128);





 for ( ; state->path.active >= 2; drop_blk--, save_blk--,
   state->path.active--) {






  switch (drop_blk->magic) {
  case 130:
   error = xfs_attr_leaf_toosmall(state, &action);
   if (error)
    return(error);
   if (action == 0)
    return(0);
   xfs_attr_leaf_unbalance(state, drop_blk, save_blk);
   break;
  case 128:
   error = xfs_dir2_leafn_toosmall(state, &action);
   if (error)
    return error;
   if (action == 0)
    return 0;
   xfs_dir2_leafn_unbalance(state, drop_blk, save_blk);
   break;
  case 129:




   xfs_da_node_remove(state, drop_blk);
   xfs_da_fixhashpath(state, &state->path);
   error = xfs_da_node_toosmall(state, &action);
   if (error)
    return(error);
   if (action == 0)
    return 0;
   xfs_da_node_unbalance(state, drop_blk, save_blk);
   break;
  }
  xfs_da_fixhashpath(state, &state->altpath);
  error = xfs_da_blk_unlink(state, drop_blk, save_blk);
  xfs_da_state_kill_altpath(state);
  if (error)
   return(error);
  error = xfs_da_shrink_inode(state->args, drop_blk->blkno,
        drop_blk->bp);
  drop_blk->bp = ((void*)0);
  if (error)
   return(error);
 }





 xfs_da_node_remove(state, drop_blk);
 xfs_da_fixhashpath(state, &state->path);
 error = xfs_da_root_join(state, &state->path.blk[0]);
 return(error);
}
