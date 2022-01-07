
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int VOIDmode ;
 int lowpart_subreg (int,int ,int) ;

__attribute__((used)) static rtx
record_jump_cond_subreg (enum machine_mode mode, rtx op)
{
  enum machine_mode op_mode = GET_MODE (op);
  if (op_mode == mode || op_mode == VOIDmode)
    return op;
  return lowpart_subreg (mode, op, op_mode);
}
