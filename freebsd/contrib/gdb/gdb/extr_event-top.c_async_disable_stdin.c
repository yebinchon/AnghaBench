
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_enable_stdin ;
 int make_exec_error_cleanup (int ,int *) ;
 int push_prompt (char*,char*,char*) ;
 int sync_execution ;
 int target_terminal_inferior () ;

void
async_disable_stdin (void)
{
  sync_execution = 1;
  push_prompt ("", "", "");





  target_terminal_inferior ();




  make_exec_error_cleanup (async_enable_stdin, ((void*)0));
}
