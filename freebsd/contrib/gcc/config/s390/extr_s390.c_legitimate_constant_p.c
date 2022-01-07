
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int SYMBOLIC_CONST (int ) ;
 scalar_t__ TARGET_CPU_ZARCH ;
 scalar_t__ TLS_SYMBOLIC_CONST (int ) ;
 int VOIDmode ;
 scalar_t__ flag_pic ;
 scalar_t__ larl_operand (int ,int ) ;

int
legitimate_constant_p (rtx op)
{

  if (!SYMBOLIC_CONST (op))
    return 1;


  if (TARGET_CPU_ZARCH && larl_operand (op, VOIDmode))
    return 1;




  if (TLS_SYMBOLIC_CONST (op))
    return 0;




  if (flag_pic)
    return 1;



  return 0;
}
