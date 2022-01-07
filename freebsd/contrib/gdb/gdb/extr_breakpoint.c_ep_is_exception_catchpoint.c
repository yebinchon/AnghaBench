
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {scalar_t__ type; } ;


 scalar_t__ bp_catch_catch ;
 scalar_t__ bp_catch_throw ;

int
ep_is_exception_catchpoint (struct breakpoint *ep)
{
  return
    (ep->type == bp_catch_catch)
    || (ep->type == bp_catch_throw);
}
