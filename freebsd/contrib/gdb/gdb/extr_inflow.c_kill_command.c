
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * deprecated_selected_frame ;
 int error (char*) ;
 int fputs_filtered (char*,int ) ;
 int frame_relative_level (int *) ;
 int gdb_stdout ;
 int inferior_ptid ;
 int init_thread_list () ;
 int null_ptid ;
 int print_stack_frame (int *,int ,int) ;
 int printf_filtered (char*,int ) ;
 scalar_t__ ptid_equal (int ,int ) ;
 int query (char*) ;
 scalar_t__ target_has_stack ;
 int target_kill () ;
 int target_longname ;

__attribute__((used)) static void
kill_command (char *arg, int from_tty)
{




  if (ptid_equal (inferior_ptid, null_ptid))
    error ("The program is not being run.");
  if (!query ("Kill the program being debugged? "))
    error ("Not confirmed.");
  target_kill ();

  init_thread_list ();



  if (target_has_stack)
    {
      printf_filtered ("In %s,\n", target_longname);
      if (deprecated_selected_frame == ((void*)0))
 fputs_filtered ("No selected stack frame.\n", gdb_stdout);
      else
 print_stack_frame (deprecated_selected_frame,
      frame_relative_level (deprecated_selected_frame), 1);
    }
}
