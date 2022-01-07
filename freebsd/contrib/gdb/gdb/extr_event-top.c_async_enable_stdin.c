
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pop_prompt () ;
 scalar_t__ sync_execution ;
 int target_terminal_ours () ;

void
async_enable_stdin (void *dummy)
{




  target_terminal_ours ();
  pop_prompt ();
  sync_execution = 0;
}
