
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int current_bind_expr; } ;


 TYPE_1__* gimplify_ctxp ;

tree
gimple_current_bind_expr (void)
{
  return gimplify_ctxp->current_bind_expr;
}
