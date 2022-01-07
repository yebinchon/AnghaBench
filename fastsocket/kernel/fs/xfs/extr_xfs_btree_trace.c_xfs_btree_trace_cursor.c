
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_btree_cur {int* bc_ptrs; scalar_t__* bc_bufs; TYPE_1__* bc_ops; } ;
typedef int __uint64_t ;
typedef int __uint32_t ;
typedef int __psunsigned_t ;
struct TYPE_2__ {int (* trace_enter ) (struct xfs_btree_cur*,char const*,char*,int ,int,int ,int,int,int,int,int ,int ,int ,int ,int,int) ;int (* trace_cursor ) (struct xfs_btree_cur*,int *,int*,int*) ;} ;






 int XFS_BTREE_KTRACE_CUR ;
 int stub1 (struct xfs_btree_cur*,int *,int*,int*) ;
 int stub2 (struct xfs_btree_cur*,char const*,char*,int ,int,int ,int,int,int,int,int ,int ,int ,int ,int,int) ;

void
xfs_btree_trace_cursor(
 const char *func,
 struct xfs_btree_cur *cur,
 int type,
 int line)
{
 __uint32_t s0;
 __uint64_t l0, l1;
 char *s;

 switch (type) {
 case 131:
  s = "args";
  break;
 case 130:
  s = "entry";
  break;
 case 129:
  s = "error";
  break;
 case 128:
  s = "exit";
  break;
 default:
  s = "unknown";
  break;
 }

 cur->bc_ops->trace_cursor(cur, &s0, &l0, &l1);
 cur->bc_ops->trace_enter(cur, func, s, XFS_BTREE_KTRACE_CUR, line,
     s0,
     l0 >> 32, (int)l0,
     l1 >> 32, (int)l1,
     (__psunsigned_t)cur->bc_bufs[0],
     (__psunsigned_t)cur->bc_bufs[1],
     (__psunsigned_t)cur->bc_bufs[2],
     (__psunsigned_t)cur->bc_bufs[3],
     (cur->bc_ptrs[0] << 16) | cur->bc_ptrs[1],
     (cur->bc_ptrs[2] << 16) | cur->bc_ptrs[3]);
}
