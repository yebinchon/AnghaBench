
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {scalar_t__ enable_state; int pending; } ;


 scalar_t__ bp_enabled ;

__attribute__((used)) static int
breakpoint_enabled (struct breakpoint *b)
{
  return (b->enable_state == bp_enabled && !b->pending);
}
