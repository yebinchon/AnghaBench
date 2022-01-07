
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_instantiation () ;
 int diagnostic_flush_buffer (int ) ;
 int global_dc ;
 int input_location ;
 int print_instantiation_partial_context (int ,int ,int ) ;

void
print_instantiation_context (void)
{
  print_instantiation_partial_context
    (global_dc, current_instantiation (), input_location);
  diagnostic_flush_buffer (global_dc);
}
