
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_file_start () ;
 int emit_safe_across_calls () ;
 scalar_t__ flag_var_tracking ;
 scalar_t__ ia64_flag_var_tracking ;

__attribute__((used)) static void
ia64_file_start (void)
{




  ia64_flag_var_tracking = flag_var_tracking;
  flag_var_tracking = 0;

  default_file_start ();
  emit_safe_across_calls ();
}
