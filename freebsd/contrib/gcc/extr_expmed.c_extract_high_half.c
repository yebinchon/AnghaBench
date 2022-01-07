
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 int NULL_TREE ;
 int RSHIFT_EXPR ;
 int SCALAR_FLOAT_MODE_P (int) ;
 int build_int_cst (int ,int ) ;
 int convert_modes (int,int,int ,int ) ;
 int expand_shift (int ,int,int ,int ,int ,int) ;
 int gcc_assert (int) ;
 int gen_highpart (int,int ) ;
 int word_mode ;

__attribute__((used)) static rtx
extract_high_half (enum machine_mode mode, rtx op)
{
  enum machine_mode wider_mode;

  if (mode == word_mode)
    return gen_highpart (mode, op);

  gcc_assert (!SCALAR_FLOAT_MODE_P (mode));

  wider_mode = GET_MODE_WIDER_MODE (mode);
  op = expand_shift (RSHIFT_EXPR, wider_mode, op,
       build_int_cst (NULL_TREE, GET_MODE_BITSIZE (mode)), 0, 1);
  return convert_modes (mode, wider_mode, op, 0);
}
