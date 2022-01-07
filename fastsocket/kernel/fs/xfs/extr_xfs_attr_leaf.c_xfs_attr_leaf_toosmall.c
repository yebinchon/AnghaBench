
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_22__ {TYPE_9__* data; } ;
typedef TYPE_5__ xfs_dabuf_t ;
typedef scalar_t__ xfs_dablk_t ;
struct TYPE_17__ {int active; TYPE_7__* blk; } ;
struct TYPE_23__ {int blocksize; TYPE_12__ path; TYPE_12__ altpath; TYPE_4__* args; } ;
typedef TYPE_6__ xfs_da_state_t ;
struct TYPE_24__ {scalar_t__ blkno; TYPE_1__* bp; } ;
typedef TYPE_7__ xfs_da_state_blk_t ;
struct TYPE_25__ {scalar_t__ forw; scalar_t__ back; int magic; } ;
typedef TYPE_8__ xfs_da_blkinfo_t ;
struct TYPE_19__ {int magic; } ;
struct TYPE_20__ {int usedbytes; int count; TYPE_2__ info; } ;
struct TYPE_26__ {TYPE_3__ hdr; } ;
typedef TYPE_9__ xfs_attr_leafblock_t ;
typedef int xfs_attr_leaf_hdr_t ;
typedef int xfs_attr_leaf_entry_t ;
struct TYPE_21__ {int trans; int dp; } ;
struct TYPE_18__ {TYPE_8__* data; } ;


 int ASSERT (int) ;
 int XFS_ATTR_FORK ;
 int XFS_ATTR_LEAF_MAGIC ;
 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (scalar_t__) ;
 int memcpy (TYPE_12__*,TYPE_12__*,int) ;
 int xfs_da_brelse (int ,TYPE_5__*) ;
 int xfs_da_path_shift (TYPE_6__*,TYPE_12__*,int,int ,int*) ;
 int xfs_da_read_buf (int ,int ,scalar_t__,int,TYPE_5__**,int ) ;

int
xfs_attr_leaf_toosmall(xfs_da_state_t *state, int *action)
{
 xfs_attr_leafblock_t *leaf;
 xfs_da_state_blk_t *blk;
 xfs_da_blkinfo_t *info;
 int count, bytes, forward, error, retval, i;
 xfs_dablk_t blkno;
 xfs_dabuf_t *bp;






 blk = &state->path.blk[ state->path.active-1 ];
 info = blk->bp->data;
 ASSERT(be16_to_cpu(info->magic) == XFS_ATTR_LEAF_MAGIC);
 leaf = (xfs_attr_leafblock_t *)info;
 count = be16_to_cpu(leaf->hdr.count);
 bytes = sizeof(xfs_attr_leaf_hdr_t) +
  count * sizeof(xfs_attr_leaf_entry_t) +
  be16_to_cpu(leaf->hdr.usedbytes);
 if (bytes > (state->blocksize >> 1)) {
  *action = 0;
  return(0);
 }







 if (count == 0) {




  forward = (info->forw != 0);
  memcpy(&state->altpath, &state->path, sizeof(state->path));
  error = xfs_da_path_shift(state, &state->altpath, forward,
       0, &retval);
  if (error)
   return(error);
  if (retval) {
   *action = 0;
  } else {
   *action = 2;
  }
  return(0);
 }
 forward = (be32_to_cpu(info->forw) < be32_to_cpu(info->back));
 for (i = 0; i < 2; forward = !forward, i++) {
  if (forward)
   blkno = be32_to_cpu(info->forw);
  else
   blkno = be32_to_cpu(info->back);
  if (blkno == 0)
   continue;
  error = xfs_da_read_buf(state->args->trans, state->args->dp,
     blkno, -1, &bp, XFS_ATTR_FORK);
  if (error)
   return(error);
  ASSERT(bp != ((void*)0));

  leaf = (xfs_attr_leafblock_t *)info;
  count = be16_to_cpu(leaf->hdr.count);
  bytes = state->blocksize - (state->blocksize>>2);
  bytes -= be16_to_cpu(leaf->hdr.usedbytes);
  leaf = bp->data;
  ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
  count += be16_to_cpu(leaf->hdr.count);
  bytes -= be16_to_cpu(leaf->hdr.usedbytes);
  bytes -= count * sizeof(xfs_attr_leaf_entry_t);
  bytes -= sizeof(xfs_attr_leaf_hdr_t);
  xfs_da_brelse(state->args->trans, bp);
  if (bytes >= 0)
   break;
 }
 if (i >= 2) {
  *action = 0;
  return(0);
 }





 memcpy(&state->altpath, &state->path, sizeof(state->path));
 if (blkno < blk->blkno) {
  error = xfs_da_path_shift(state, &state->altpath, forward,
       0, &retval);
 } else {
  error = xfs_da_path_shift(state, &state->path, forward,
       0, &retval);
 }
 if (error)
  return(error);
 if (retval) {
  *action = 0;
 } else {
  *action = 1;
 }
 return(0);
}
