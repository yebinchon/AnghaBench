
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_lru_ref; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static inline void
xfs_buf_set_ref(
 struct xfs_buf *bp,
 int lru_ref)
{
 atomic_set(&bp->b_lru_ref, lru_ref);
}
