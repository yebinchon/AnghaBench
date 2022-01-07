
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_btree_cur {TYPE_1__* bc_ops; } ;
struct TYPE_2__ {int (* trace_enter ) (struct xfs_btree_cur*,char const*,int ,int ,int,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;} ;


 int XBT_ARGS ;
 int XFS_BTREE_KTRACE_ARGI ;
 int stub1 (struct xfs_btree_cur*,char const*,int ,int ,int,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void
xfs_btree_trace_argi(
 const char *func,
 struct xfs_btree_cur *cur,
 int i,
 int line)
{
 cur->bc_ops->trace_enter(cur, func, XBT_ARGS, XFS_BTREE_KTRACE_ARGI,
     line, i, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
