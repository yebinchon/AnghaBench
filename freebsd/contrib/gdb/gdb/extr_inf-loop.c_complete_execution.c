
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_CLEANUPS ;
 int display_gdb_prompt (int ) ;
 int do_exec_error_cleanups (int ) ;
 scalar_t__ exec_done_display_p ;
 int printf_unfiltered (char*) ;
 scalar_t__ sync_execution ;
 int target_async (int *,int ) ;
 scalar_t__ target_executing ;

__attribute__((used)) static void
complete_execution (void)
{
  target_executing = 0;




  target_async (((void*)0), 0);

  if (sync_execution)
    {
      do_exec_error_cleanups (ALL_CLEANUPS);
      display_gdb_prompt (0);
    }
  else
    {
      if (exec_done_display_p)
 printf_unfiltered ("completed.\n");
    }
}
