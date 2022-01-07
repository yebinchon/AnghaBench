
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


struct TYPE_22__ {int namelen; int name; } ;
typedef TYPE_6__ xfs_dir2_data_entry_t ;
struct TYPE_21__ {int index; TYPE_14__* bp; } ;
struct TYPE_20__ {int active; TYPE_3__* blk; } ;
struct TYPE_23__ {TYPE_5__ extrablk; scalar_t__ extravalid; TYPE_4__ path; TYPE_2__* mp; int node_ents; int blocksize; TYPE_8__* args; } ;
typedef TYPE_7__ xfs_da_state_t ;
struct TYPE_24__ {scalar_t__ cmpresult; int trans; TYPE_1__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;
struct TYPE_19__ {TYPE_14__* bp; } ;
struct TYPE_18__ {int m_dir_node_ents; int m_dirblksize; } ;
struct TYPE_17__ {TYPE_2__* i_mount; } ;
struct TYPE_16__ {scalar_t__ data; } ;


 int ENOENT ;
 scalar_t__ XFS_CMP_CASE ;
 int trace_xfs_dir2_node_lookup (TYPE_8__*) ;
 int xfs_da_brelse (int ,TYPE_14__*) ;
 int xfs_da_node_lookup_int (TYPE_7__*,int*) ;
 TYPE_7__* xfs_da_state_alloc () ;
 int xfs_da_state_free (TYPE_7__*) ;
 int xfs_dir_cilookup_result (TYPE_8__*,int ,int ) ;

int
xfs_dir2_node_lookup(
 xfs_da_args_t *args)
{
 int error;
 int i;
 int rval;
 xfs_da_state_t *state;

 trace_xfs_dir2_node_lookup(args);




 state = xfs_da_state_alloc();
 state->args = args;
 state->mp = args->dp->i_mount;
 state->blocksize = state->mp->m_dirblksize;
 state->node_ents = state->mp->m_dir_node_ents;



 error = xfs_da_node_lookup_int(state, &rval);
 if (error)
  rval = error;
 else if (rval == ENOENT && args->cmpresult == XFS_CMP_CASE) {

  xfs_dir2_data_entry_t *dep;

  dep = (xfs_dir2_data_entry_t *)((char *)state->extrablk.bp->
      data + state->extrablk.index);
  rval = xfs_dir_cilookup_result(args, dep->name, dep->namelen);
 }



 for (i = 0; i < state->path.active; i++) {
  xfs_da_brelse(args->trans, state->path.blk[i].bp);
  state->path.blk[i].bp = ((void*)0);
 }



 if (state->extravalid && state->extrablk.bp) {
  xfs_da_brelse(args->trans, state->extrablk.bp);
  state->extrablk.bp = ((void*)0);
 }
 xfs_da_state_free(state);
 return rval;
}
