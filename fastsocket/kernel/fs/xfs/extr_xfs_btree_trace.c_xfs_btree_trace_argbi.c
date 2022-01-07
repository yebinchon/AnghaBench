
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {TYPE_1__* bc_ops; } ;
typedef int __psunsigned_t ;
struct TYPE_2__ {int (* trace_enter ) (struct xfs_btree_cur*,char const*,int ,int ,int,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;} ;


 int XBT_ARGS ;
 int XFS_BTREE_KTRACE_ARGBI ;
 int stub1 (struct xfs_btree_cur*,char const*,int ,int ,int,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void
xfs_btree_trace_argbi(
 const char *func,
 struct xfs_btree_cur *cur,
 struct xfs_buf *b,
 int i,
 int line)
{
 cur->bc_ops->trace_enter(cur, func, XBT_ARGS, XFS_BTREE_KTRACE_ARGBI,
     line, (__psunsigned_t)b, i, 0, 0, 0, 0, 0,
     0, 0, 0, 0);
}
