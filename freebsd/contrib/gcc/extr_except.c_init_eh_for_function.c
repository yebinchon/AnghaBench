
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eh_status {int dummy; } ;
struct TYPE_2__ {int eh; } ;


 TYPE_1__* cfun ;
 int ggc_alloc_cleared (int) ;

void
init_eh_for_function (void)
{
  cfun->eh = ggc_alloc_cleared (sizeof (struct eh_status));
}
