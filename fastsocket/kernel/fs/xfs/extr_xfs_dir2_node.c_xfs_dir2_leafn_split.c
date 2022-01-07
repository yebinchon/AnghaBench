
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int xfs_mount_t ;
typedef int xfs_dablk_t ;
struct TYPE_18__ {scalar_t__ inleaf; TYPE_3__* args; } ;
typedef TYPE_1__ xfs_da_state_t ;
struct TYPE_19__ {scalar_t__ magic; int bp; void* hashval; int index; int blkno; } ;
typedef TYPE_2__ xfs_da_state_blk_t ;
struct TYPE_20__ {TYPE_10__* dp; } ;
typedef TYPE_3__ xfs_da_args_t ;
struct TYPE_17__ {int * i_mount; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 int xfs_da_blk_link (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int xfs_da_grow_inode (TYPE_3__*,int *) ;
 int xfs_dir2_da_to_db (int *,int ) ;
 int xfs_dir2_leaf_init (TYPE_3__*,int ,int *,scalar_t__) ;
 int xfs_dir2_leafn_add (int ,TYPE_3__*,int ) ;
 int xfs_dir2_leafn_check (TYPE_10__*,int ) ;
 void* xfs_dir2_leafn_lasthash (int ,int *) ;
 int xfs_dir2_leafn_rebalance (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;

int
xfs_dir2_leafn_split(
 xfs_da_state_t *state,
 xfs_da_state_blk_t *oldblk,
 xfs_da_state_blk_t *newblk)
{
 xfs_da_args_t *args;
 xfs_dablk_t blkno;
 int error;
 xfs_mount_t *mp;




 args = state->args;
 mp = args->dp->i_mount;
 ASSERT(args != ((void*)0));
 ASSERT(oldblk->magic == XFS_DIR2_LEAFN_MAGIC);
 error = xfs_da_grow_inode(args, &blkno);
 if (error) {
  return error;
 }



 error = xfs_dir2_leaf_init(args, xfs_dir2_da_to_db(mp, blkno),
  &newblk->bp, XFS_DIR2_LEAFN_MAGIC);
 if (error) {
  return error;
 }
 newblk->blkno = blkno;
 newblk->magic = XFS_DIR2_LEAFN_MAGIC;




 xfs_dir2_leafn_rebalance(state, oldblk, newblk);
 error = xfs_da_blk_link(state, oldblk, newblk);
 if (error) {
  return error;
 }



 if (state->inleaf)
  error = xfs_dir2_leafn_add(oldblk->bp, args, oldblk->index);
 else
  error = xfs_dir2_leafn_add(newblk->bp, args, newblk->index);



 oldblk->hashval = xfs_dir2_leafn_lasthash(oldblk->bp, ((void*)0));
 newblk->hashval = xfs_dir2_leafn_lasthash(newblk->bp, ((void*)0));
 xfs_dir2_leafn_check(args->dp, oldblk->bp);
 xfs_dir2_leafn_check(args->dp, newblk->bp);
 return error;
}
