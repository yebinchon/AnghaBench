
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_CLEANUPS ;
 int current_interp_command_loop () ;
 int do_cleanups (int ) ;
 scalar_t__ instream ;
 int quit_command (int *,int) ;
 scalar_t__ stdin ;

__attribute__((used)) static int
captured_command_loop (void *data)
{
  current_interp_command_loop ();







  do_cleanups (ALL_CLEANUPS);




  quit_command (((void*)0), instream == stdin);
  return 1;
}
