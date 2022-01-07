
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_error; } ;
typedef TYPE_1__ xfs_buf_t ;


 int ENOMEM ;

__attribute__((used)) static inline int xfs_buf_geterror(xfs_buf_t *bp)
{
 return bp ? bp->b_error : ENOMEM;
}
