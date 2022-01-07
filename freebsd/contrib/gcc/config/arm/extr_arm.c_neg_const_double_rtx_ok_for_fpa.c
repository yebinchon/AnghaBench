
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ REAL_VALUES_EQUAL (int ,int ) ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int ) ;
 scalar_t__ REAL_VALUE_MINUS_ZERO (int ) ;
 int REAL_VALUE_NEGATE (int ) ;
 int fp_consts_inited ;
 int init_fp_table () ;
 int * values_fp ;

int
neg_const_double_rtx_ok_for_fpa (rtx x)
{
  REAL_VALUE_TYPE r;
  int i;

  if (!fp_consts_inited)
    init_fp_table ();

  REAL_VALUE_FROM_CONST_DOUBLE (r, x);
  r = REAL_VALUE_NEGATE (r);
  if (REAL_VALUE_MINUS_ZERO (r))
    return 0;

  for (i = 0; i < 8; i++)
    if (REAL_VALUES_EQUAL (r, values_fp[i]))
      return 1;

  return 0;
}
