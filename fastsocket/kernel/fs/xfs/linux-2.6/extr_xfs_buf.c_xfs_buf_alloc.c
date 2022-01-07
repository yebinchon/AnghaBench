
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_off_t ;
typedef int xfs_buf_flags_t ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf {size_t b_buffer_length; size_t b_count_desired; int b_flags; int b_waiters; int b_pin_count; int b_bn; int b_file_offset; struct xfs_buftarg* b_target; int b_sema; int b_rbnode; int b_list; int b_lru; int b_iowait; int b_lru_ref; int b_hold; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int XBF_ASYNC ;
 int XBF_DONT_BLOCK ;
 int XBF_LOCK ;
 int XBF_MAPPED ;
 int XBF_READ_AHEAD ;
 int XBF_TRYLOCK ;
 int XB_SET_OWNER (struct xfs_buf*) ;
 int XFS_BUF_DADDR_NULL ;
 int XFS_STATS_INC (int ) ;
 int _RET_IP_ ;
 int atomic_set (int *,int) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 struct xfs_buf* kmem_zone_zalloc (int ,int ) ;
 int sema_init (int *,int ) ;
 int trace_xfs_buf_init (struct xfs_buf*,int ) ;
 scalar_t__ unlikely (int) ;
 int xb_create ;
 int xb_to_km (int) ;
 int xfs_buf_zone ;

struct xfs_buf *
xfs_buf_alloc(
 struct xfs_buftarg *target,
 xfs_off_t range_base,
 size_t range_length,
 xfs_buf_flags_t flags)
{
 struct xfs_buf *bp;

 bp = kmem_zone_zalloc(xfs_buf_zone, xb_to_km(flags));
 if (unlikely(!bp))
  return ((void*)0);





 flags &= ~(XBF_LOCK | XBF_MAPPED | XBF_DONT_BLOCK |
     XBF_TRYLOCK | XBF_ASYNC | XBF_READ_AHEAD);

 atomic_set(&bp->b_hold, 1);
 atomic_set(&bp->b_lru_ref, 1);
 init_completion(&bp->b_iowait);
 INIT_LIST_HEAD(&bp->b_lru);
 INIT_LIST_HEAD(&bp->b_list);
 RB_CLEAR_NODE(&bp->b_rbnode);
 sema_init(&bp->b_sema, 0);
 XB_SET_OWNER(bp);
 bp->b_target = target;
 bp->b_file_offset = range_base;





 bp->b_buffer_length = bp->b_count_desired = range_length;
 bp->b_flags = flags;
 bp->b_bn = XFS_BUF_DADDR_NULL;
 atomic_set(&bp->b_pin_count, 0);
 init_waitqueue_head(&bp->b_waiters);

 XFS_STATS_INC(xb_create);
 trace_xfs_buf_init(bp, _RET_IP_);

 return bp;
}
