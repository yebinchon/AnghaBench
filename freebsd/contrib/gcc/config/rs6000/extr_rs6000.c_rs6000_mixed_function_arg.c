
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 int GEN_INT (int) ;
 scalar_t__ GP_ARG_MIN_REG ;
 int GP_ARG_NUM_REG ;
 int NULL_RTX ;
 int SImode ;
 int VOIDmode ;
 int const0_rtx ;
 int gen_rtvec_v (int,int *) ;
 int gen_rtx_EXPR_LIST (int ,int ,int ) ;
 int gen_rtx_PARALLEL (int,int ) ;
 int gen_rtx_REG (int,scalar_t__) ;
 int rs6000_arg_size (int,int ) ;

__attribute__((used)) static rtx
rs6000_mixed_function_arg (enum machine_mode mode, tree type, int align_words)
{
  int n_units;
  int i, k;
  rtx rvec[GP_ARG_NUM_REG + 1];

  if (align_words >= GP_ARG_NUM_REG)
    return NULL_RTX;

  n_units = rs6000_arg_size (mode, type);




  if (n_units == 0
      || (n_units == 1 && mode != BLKmode))
    return gen_rtx_REG (mode, GP_ARG_MIN_REG + align_words);

  k = 0;
  if (align_words + n_units > GP_ARG_NUM_REG)
    rvec[k++] = gen_rtx_EXPR_LIST (VOIDmode, NULL_RTX, const0_rtx);

  i = 0;
  do
    {
      rtx r = gen_rtx_REG (SImode, GP_ARG_MIN_REG + align_words);
      rtx off = GEN_INT (i++ * 4);
      rvec[k++] = gen_rtx_EXPR_LIST (VOIDmode, r, off);
    }
  while (++align_words < GP_ARG_NUM_REG && --n_units != 0);

  return gen_rtx_PARALLEL (mode, gen_rtvec_v (k, rvec));
}
