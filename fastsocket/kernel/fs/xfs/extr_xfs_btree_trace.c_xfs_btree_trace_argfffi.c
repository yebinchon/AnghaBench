
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_dfsbno_t ;
typedef int xfs_dfiloff_t ;
typedef int xfs_dfilblks_t ;
struct xfs_btree_cur {TYPE_1__* bc_ops; } ;
struct TYPE_2__ {int (* trace_enter ) (struct xfs_btree_cur*,char const*,int ,int ,int,int,int,int,int,int,int,int,int ,int ,int ,int ) ;} ;


 int XBT_ARGS ;
 int XFS_BTREE_KTRACE_ARGFFFI ;
 int stub1 (struct xfs_btree_cur*,char const*,int ,int ,int,int,int,int,int,int,int,int,int ,int ,int ,int ) ;

void
xfs_btree_trace_argfffi(
 const char *func,
 struct xfs_btree_cur *cur,
 xfs_dfiloff_t o,
 xfs_dfsbno_t b,
 xfs_dfilblks_t i,
 int j,
 int line)
{
 cur->bc_ops->trace_enter(cur, func, XBT_ARGS, XFS_BTREE_KTRACE_ARGFFFI,
     line,
     o >> 32, (int)o,
     b >> 32, (int)b,
     i >> 32, (int)i,
     (int)j, 0, 0, 0, 0);
}
