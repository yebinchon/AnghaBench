
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ASM_OUTPUT_SPECIAL_POOL_ENTRY_P (int ,int) ;

__attribute__((used)) static bool
rs6000_use_blocks_for_constant_p (enum machine_mode mode, rtx x)
{
  return !ASM_OUTPUT_SPECIAL_POOL_ENTRY_P (x, mode);
}
