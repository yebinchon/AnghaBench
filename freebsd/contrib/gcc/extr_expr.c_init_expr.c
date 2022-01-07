
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expr_status {int dummy; } ;
struct TYPE_2__ {int expr; } ;


 TYPE_1__* cfun ;
 int ggc_alloc_cleared (int) ;

void
init_expr (void)
{
  cfun->expr = ggc_alloc_cleared (sizeof (struct expr_status));
}
