
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


struct TYPE_16__ {int active; TYPE_4__* blk; } ;
struct TYPE_19__ {TYPE_14__ path; int extrablk; scalar_t__ extravalid; TYPE_2__* mp; int node_ents; int blocksize; TYPE_5__* args; } ;
typedef TYPE_3__ xfs_da_state_t ;
struct TYPE_20__ {scalar_t__ magic; int index; int bp; } ;
typedef TYPE_4__ xfs_da_state_blk_t ;
struct TYPE_21__ {int op_flags; scalar_t__ total; TYPE_1__* dp; } ;
typedef TYPE_5__ xfs_da_args_t ;
struct TYPE_18__ {int m_dir_node_ents; int m_dirblksize; } ;
struct TYPE_17__ {TYPE_2__* i_mount; } ;


 int ASSERT (int) ;
 int ENOENT ;
 int ENOSPC ;
 int XFS_DA_OP_JUSTCHECK ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 int trace_xfs_dir2_node_addname (TYPE_5__*) ;
 int xfs_da_fixhashpath (TYPE_3__*,TYPE_14__*) ;
 int xfs_da_node_lookup_int (TYPE_3__*,int*) ;
 int xfs_da_split (TYPE_3__*) ;
 TYPE_3__* xfs_da_state_alloc () ;
 int xfs_da_state_free (TYPE_3__*) ;
 int xfs_dir2_leafn_add (int ,TYPE_5__*,int ) ;
 int xfs_dir2_node_addname_int (TYPE_5__*,int *) ;

int
xfs_dir2_node_addname(
 xfs_da_args_t *args)
{
 xfs_da_state_blk_t *blk;
 int error;
 int rval;
 xfs_da_state_t *state;

 trace_xfs_dir2_node_addname(args);




 state = xfs_da_state_alloc();
 state->args = args;
 state->mp = args->dp->i_mount;
 state->blocksize = state->mp->m_dirblksize;
 state->node_ents = state->mp->m_dir_node_ents;




 error = xfs_da_node_lookup_int(state, &rval);
 if (error)
  rval = error;
 if (rval != ENOENT) {
  goto done;
 }




 rval = xfs_dir2_node_addname_int(args,
  state->extravalid ? &state->extrablk : ((void*)0));
 if (rval) {
  goto done;
 }
 blk = &state->path.blk[state->path.active - 1];
 ASSERT(blk->magic == XFS_DIR2_LEAFN_MAGIC);



 rval = xfs_dir2_leafn_add(blk->bp, args, blk->index);
 if (rval == 0) {



  if (!(args->op_flags & XFS_DA_OP_JUSTCHECK))
   xfs_da_fixhashpath(state, &state->path);
 } else {



  if (args->total == 0) {
   ASSERT(rval == ENOSPC);
   goto done;
  }



  rval = xfs_da_split(state);
 }
done:
 xfs_da_state_free(state);
 return rval;
}
