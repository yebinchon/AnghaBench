
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reachable_info {int saw_any_handlers; int callback_data; int (* callback ) (struct eh_region*,int ) ;} ;
struct eh_region {int dummy; } ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {scalar_t__ built_landing_pads; } ;


 TYPE_2__* cfun ;
 int stub1 (struct eh_region*,int ) ;
 int stub2 (struct eh_region*,int ) ;

__attribute__((used)) static void
add_reachable_handler (struct reachable_info *info,
         struct eh_region *lp_region, struct eh_region *region)
{
  if (! info)
    return;

  info->saw_any_handlers = 1;

  if (cfun->eh->built_landing_pads)
    info->callback (lp_region, info->callback_data);
  else
    info->callback (region, info->callback_data);
}
