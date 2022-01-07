
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ TRULY_NOOP_TRUNCATION (int ,int ) ;
 int TRUNCATE ;
 int gen_lowpart (int,int ) ;
 scalar_t__ reg_truncated_to_mode (int,int ) ;
 int simplify_gen_unary (int ,int,int ,int) ;

__attribute__((used)) static rtx
gen_lowpart_or_truncate (enum machine_mode mode, rtx x)
{
  if (GET_MODE_SIZE (GET_MODE (x)) <= GET_MODE_SIZE (mode)
      || TRULY_NOOP_TRUNCATION (GET_MODE_BITSIZE (mode),
    GET_MODE_BITSIZE (GET_MODE (x)))
      || (REG_P (x) && reg_truncated_to_mode (mode, x)))
    return gen_lowpart (mode, x);
  else
    return simplify_gen_unary (TRUNCATE, mode, x, GET_MODE (x));
}
