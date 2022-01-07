
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diagnostic_context ;


 scalar_t__ current_instantiation () ;
 int print_instantiation_full_context (int *) ;
 int problematic_instantiation_changed () ;
 int record_last_problematic_instantiation () ;

__attribute__((used)) static void
maybe_print_instantiation_context (diagnostic_context *context)
{
  if (!problematic_instantiation_changed () || current_instantiation () == 0)
    return;

  record_last_problematic_instantiation ();
  print_instantiation_full_context (context);
}
