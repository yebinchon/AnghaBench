
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_29__ ;
typedef struct TYPE_32__ TYPE_25__ ;
typedef struct TYPE_31__ TYPE_20__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_35__ {TYPE_6__* data; } ;
typedef TYPE_3__ xfs_dabuf_t ;
struct TYPE_37__ {scalar_t__ magic; scalar_t__ blkno; TYPE_3__* bp; } ;
struct TYPE_31__ {int active; TYPE_5__* blk; } ;
struct TYPE_30__ {TYPE_5__* blk; } ;
struct TYPE_36__ {int extravalid; int extraafter; TYPE_25__* args; TYPE_5__ extrablk; TYPE_20__ path; int inleaf; TYPE_1__ altpath; } ;
typedef TYPE_4__ xfs_da_state_t ;
typedef TYPE_5__ xfs_da_state_blk_t ;
struct TYPE_33__ {void* forw; void* back; } ;
struct TYPE_34__ {TYPE_29__ info; } ;
struct TYPE_38__ {TYPE_2__ hdr; } ;
typedef TYPE_6__ xfs_da_intnode_t ;
struct TYPE_32__ {int trans; } ;


 int ASSERT (int) ;
 int ENOSPC ;

 int XFS_DA_LOGRANGE (TYPE_6__*,TYPE_29__*,int) ;

 int XFS_DA_NODE_MAXDEPTH ;

 scalar_t__ be32_to_cpu (void*) ;
 void* cpu_to_be32 (scalar_t__) ;
 int trace_xfs_attr_leaf_split_after (TYPE_25__*) ;
 int trace_xfs_attr_leaf_split_before (TYPE_25__*) ;
 int trace_xfs_da_split (TYPE_25__*) ;
 int xfs_attr_leaf_split (TYPE_4__*,TYPE_5__*,TYPE_5__*) ;
 int xfs_da_buf_done (TYPE_3__*) ;
 int xfs_da_fixhashpath (TYPE_4__*,TYPE_20__*) ;
 int xfs_da_log_buf (int ,TYPE_3__*,int ) ;
 int xfs_da_node_split (TYPE_4__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,int,int*) ;
 int xfs_da_root_split (TYPE_4__*,TYPE_5__*,TYPE_5__*) ;
 int xfs_dir2_leafn_split (TYPE_4__*,TYPE_5__*,TYPE_5__*) ;

int
xfs_da_split(xfs_da_state_t *state)
{
 xfs_da_state_blk_t *oldblk, *newblk, *addblk;
 xfs_da_intnode_t *node;
 xfs_dabuf_t *bp;
 int max, action, error, i;

 trace_xfs_da_split(state->args);







 max = state->path.active - 1;
 ASSERT((max >= 0) && (max < XFS_DA_NODE_MAXDEPTH));
 ASSERT(state->path.blk[max].magic == 130 ||
        state->path.blk[max].magic == 128);

 addblk = &state->path.blk[max];
 for (i = max; (i >= 0) && addblk; state->path.active--, i--) {
  oldblk = &state->path.blk[i];
  newblk = &state->altpath.blk[i];







  switch (oldblk->magic) {
  case 130:
   error = xfs_attr_leaf_split(state, oldblk, newblk);
   if ((error != 0) && (error != ENOSPC)) {
    return(error);
   }
   if (!error) {
    addblk = newblk;
    break;
   }



   state->extravalid = 1;
   if (state->inleaf) {
    state->extraafter = 0;
    trace_xfs_attr_leaf_split_before(state->args);
    error = xfs_attr_leaf_split(state, oldblk,
           &state->extrablk);
   } else {
    state->extraafter = 1;
    trace_xfs_attr_leaf_split_after(state->args);
    error = xfs_attr_leaf_split(state, newblk,
           &state->extrablk);
   }
   if (error)
    return(error);
   addblk = newblk;
   break;
  case 128:
   error = xfs_dir2_leafn_split(state, oldblk, newblk);
   if (error)
    return error;
   addblk = newblk;
   break;
  case 129:
   error = xfs_da_node_split(state, oldblk, newblk, addblk,
        max - i, &action);
   xfs_da_buf_done(addblk->bp);
   addblk->bp = ((void*)0);
   if (error)
    return(error);



   if (action)
    addblk = newblk;
   else
    addblk = ((void*)0);
   break;
  }




  xfs_da_fixhashpath(state, &state->path);





  if (i > 0 || !addblk)
   xfs_da_buf_done(oldblk->bp);
 }
 if (!addblk)
  return(0);




 ASSERT(state->path.active == 0);
 oldblk = &state->path.blk[0];
 error = xfs_da_root_split(state, oldblk, addblk);
 if (error) {
  xfs_da_buf_done(oldblk->bp);
  xfs_da_buf_done(addblk->bp);
  addblk->bp = ((void*)0);
  return(error);
 }
 node = oldblk->bp->data;
 if (node->hdr.info.forw) {
  if (be32_to_cpu(node->hdr.info.forw) == addblk->blkno) {
   bp = addblk->bp;
  } else {
   ASSERT(state->extravalid);
   bp = state->extrablk.bp;
  }
  node = bp->data;
  node->hdr.info.back = cpu_to_be32(oldblk->blkno);
  xfs_da_log_buf(state->args->trans, bp,
      XFS_DA_LOGRANGE(node, &node->hdr.info,
      sizeof(node->hdr.info)));
 }
 node = oldblk->bp->data;
 if (node->hdr.info.back) {
  if (be32_to_cpu(node->hdr.info.back) == addblk->blkno) {
   bp = addblk->bp;
  } else {
   ASSERT(state->extravalid);
   bp = state->extrablk.bp;
  }
  node = bp->data;
  node->hdr.info.forw = cpu_to_be32(oldblk->blkno);
  xfs_da_log_buf(state->args->trans, bp,
      XFS_DA_LOGRANGE(node, &node->hdr.info,
      sizeof(node->hdr.info)));
 }
 xfs_da_buf_done(oldblk->bp);
 xfs_da_buf_done(addblk->bp);
 addblk->bp = ((void*)0);
 return(0);
}
