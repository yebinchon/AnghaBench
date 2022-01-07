
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DINFO_LEVEL_NONE ;
 scalar_t__ DINFO_LEVEL_NORMAL ;
 scalar_t__ DINFO_LEVEL_VERBOSE ;
 scalar_t__ debug_info_level ;
 int expand_dummy_function_end () ;
 scalar_t__ flag_caller_saves ;
 scalar_t__ flag_test_coverage ;
 int init_alias_once () ;
 int init_caller_save () ;
 int init_dummy_function_start () ;
 int init_emit_once (int) ;
 int init_expmed () ;
 int init_fake_stack_mems () ;
 int init_regs () ;
 int init_reload () ;
 int init_rtlanal () ;
 int init_varasm_once () ;

__attribute__((used)) static void
backend_init (void)
{
  init_emit_once (debug_info_level == DINFO_LEVEL_NORMAL
    || debug_info_level == DINFO_LEVEL_VERBOSE




      || flag_test_coverage);

  init_rtlanal ();
  init_regs ();
  init_fake_stack_mems ();
  init_alias_once ();
  init_reload ();
  init_varasm_once ();



  init_dummy_function_start ();
  init_expmed ();
  if (flag_caller_saves)
    init_caller_save ();
  expand_dummy_function_end ();
}
