
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ conditions; int conditional_cleanups; } ;


 int gcc_assert (int) ;
 TYPE_1__* gimplify_ctxp ;

__attribute__((used)) static void
gimple_push_condition (void)
{




  ++(gimplify_ctxp->conditions);
}
