
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 int ok_for_base_p_1 (unsigned int,int,int,int) ;
 unsigned int* reg_renumber ;

__attribute__((used)) static inline bool
regno_ok_for_base_p (unsigned regno, enum machine_mode mode,
       enum rtx_code outer_code, enum rtx_code index_code)
{
  if (regno >= FIRST_PSEUDO_REGISTER && reg_renumber[regno] >= 0)
    regno = reg_renumber[regno];

  return ok_for_base_p_1 (regno, mode, outer_code, index_code);
}
