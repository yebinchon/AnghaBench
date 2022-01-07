
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ executing_breakpoint_commands ;

__attribute__((used)) static void
cleanup_executing_breakpoints (void *ignore)
{
  executing_breakpoint_commands = 0;
}
