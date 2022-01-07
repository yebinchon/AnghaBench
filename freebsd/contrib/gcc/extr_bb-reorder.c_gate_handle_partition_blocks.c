
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECL_ONE_ONLY (int ) ;
 int current_function_decl ;
 scalar_t__ flag_reorder_blocks_and_partition ;
 int user_defined_section_attribute ;

__attribute__((used)) static bool
gate_handle_partition_blocks (void)
{





  return (flag_reorder_blocks_and_partition
   && !DECL_ONE_ONLY (current_function_decl)
   && !user_defined_section_attribute);
}
