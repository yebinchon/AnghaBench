
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; int b_page_count; } ;


 int XBF_MAPPED ;

__attribute__((used)) static inline int
xfs_buf_is_vmapped(
 struct xfs_buf *bp)
{







 return (bp->b_flags & XBF_MAPPED) && bp->b_page_count > 1;
}
