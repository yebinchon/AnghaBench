
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 int add_set_cmd (char*,int ,int ,int *,char*,int *) ;
 int add_setshow_boolean_cmd (char*,int ,int *,char*,char*,int *,int *,int *,int *) ;
 int add_setshow_uinteger_cmd (char*,int ,int *,char*,char*,int *,int *,int *,int *) ;
 int add_show_from_set (int ,int *) ;
 int backtrace_limit ;
 int backtrace_past_main ;
 int class_maintenance ;
 int class_obscure ;
 int frame_cache_obstack ;
 int frame_debug ;
 int obstack_init (int *) ;
 int set_backtrace_cmd ;
 int set_backtrace_cmdlist ;
 int setdebuglist ;
 int setlist ;
 int show_backtrace_cmd ;
 int show_backtrace_cmdlist ;
 int showdebuglist ;
 int showlist ;
 int var_zinteger ;

void
_initialize_frame (void)
{
  obstack_init (&frame_cache_obstack);

  add_prefix_cmd ("backtrace", class_maintenance, set_backtrace_cmd, "Set backtrace specific variables.\nConfigure backtrace variables such as the backtrace limit",


    &set_backtrace_cmdlist, "set backtrace ",
    0 , &setlist);
  add_prefix_cmd ("backtrace", class_maintenance, show_backtrace_cmd, "Show backtrace specific variables\nShow backtrace variables such as the backtrace limit",


    &show_backtrace_cmdlist, "show backtrace ",
    0 , &showlist);

  add_setshow_boolean_cmd ("past-main", class_obscure,
      &backtrace_past_main, "Set whether backtraces should continue past \"main\".\nNormally the caller of \"main\" is not of interest, so GDB will terminate\nthe backtrace at \"main\".  Set this variable if you need to see the rest\nof the stack trace.", "Show whether backtraces should continue past \"main\".\nNormally the caller of \"main\" is not of interest, so GDB will terminate\nthe backtrace at \"main\".  Set this variable if you need to see the rest\nof the stack trace.",
      ((void*)0), ((void*)0), &set_backtrace_cmdlist,
      &show_backtrace_cmdlist);

  add_setshow_uinteger_cmd ("limit", class_obscure,
       &backtrace_limit, "Set an upper bound on the number of backtrace levels.\nNo more than the specified number of frames can be displayed or examined.\nZero is unlimited.", "Show the upper bound on the number of backtrace levels.",




       ((void*)0), ((void*)0), &set_backtrace_cmdlist,
       &show_backtrace_cmdlist);


  add_show_from_set (add_set_cmd ("frame", class_maintenance, var_zinteger,
      &frame_debug, "Set frame debugging.\nWhen non-zero, frame specific internal debugging is enabled.", &setdebuglist),

       &showdebuglist);
}
