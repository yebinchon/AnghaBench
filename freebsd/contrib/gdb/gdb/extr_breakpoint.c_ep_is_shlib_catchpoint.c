
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {scalar_t__ type; } ;


 scalar_t__ bp_catch_load ;
 scalar_t__ bp_catch_unload ;

int
ep_is_shlib_catchpoint (struct breakpoint *ep)
{
  return
    (ep->type == bp_catch_load)
    || (ep->type == bp_catch_unload);
}
