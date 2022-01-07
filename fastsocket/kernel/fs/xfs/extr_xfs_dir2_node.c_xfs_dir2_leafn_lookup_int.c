
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_dabuf_t ;
typedef int xfs_da_state_t ;
struct TYPE_5__ {int op_flags; } ;
typedef TYPE_1__ xfs_da_args_t ;


 int XFS_DA_OP_ADDNAME ;
 int xfs_dir2_leafn_lookup_for_addname (int *,TYPE_1__*,int*,int *) ;
 int xfs_dir2_leafn_lookup_for_entry (int *,TYPE_1__*,int*,int *) ;

int
xfs_dir2_leafn_lookup_int(
 xfs_dabuf_t *bp,
 xfs_da_args_t *args,
 int *indexp,
 xfs_da_state_t *state)
{
 if (args->op_flags & XFS_DA_OP_ADDNAME)
  return xfs_dir2_leafn_lookup_for_addname(bp, args, indexp,
       state);
 return xfs_dir2_leafn_lookup_for_entry(bp, args, indexp, state);
}
