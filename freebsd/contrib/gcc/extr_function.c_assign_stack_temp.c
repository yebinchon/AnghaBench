
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int NULL_TREE ;
 int assign_stack_temp_for_type (int,int ,int,int ) ;

rtx
assign_stack_temp (enum machine_mode mode, HOST_WIDE_INT size, int keep)
{
  return assign_stack_temp_for_type (mode, size, keep, NULL_TREE);
}
