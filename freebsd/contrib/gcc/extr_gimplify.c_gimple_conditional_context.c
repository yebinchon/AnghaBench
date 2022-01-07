
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ conditions; } ;


 TYPE_1__* gimplify_ctxp ;

__attribute__((used)) static bool
gimple_conditional_context (void)
{
  return gimplify_ctxp->conditions > 0;
}
