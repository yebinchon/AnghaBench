
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {scalar_t__ type; } ;


 scalar_t__ bp_catch_catch ;
 scalar_t__ bp_catch_exec ;
 scalar_t__ bp_catch_fork ;
 scalar_t__ bp_catch_load ;
 scalar_t__ bp_catch_throw ;
 scalar_t__ bp_catch_unload ;
 scalar_t__ bp_catch_vfork ;

int
ep_is_catchpoint (struct breakpoint *ep)
{
  return
    (ep->type == bp_catch_load)
    || (ep->type == bp_catch_unload)
    || (ep->type == bp_catch_fork)
    || (ep->type == bp_catch_vfork)
    || (ep->type == bp_catch_exec)
    || (ep->type == bp_catch_catch)
    || (ep->type == bp_catch_throw);


}
