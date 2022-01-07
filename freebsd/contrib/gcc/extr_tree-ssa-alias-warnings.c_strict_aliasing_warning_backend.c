
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_function_decl ;
 int detect_strict_aliasing_named () ;
 scalar_t__ flag_strict_aliasing ;
 int maybe_free_reference_table () ;
 int processed_func_p (int ) ;
 int warn_strict_aliasing ;

void
strict_aliasing_warning_backend (void)
{
  if (!(flag_strict_aliasing
        && warn_strict_aliasing == 3
        && !processed_func_p (current_function_decl)))
    return;

  detect_strict_aliasing_named ();
  maybe_free_reference_table ();
}
