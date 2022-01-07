
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_CODE (int ) ;
 int UNKNOWN ;
 int ix86_expand_sse_cmp (int ,int,int ,int ,int ,int ) ;
 scalar_t__ ix86_expand_sse_fp_minmax (int ,int,int ,int ,int ,int ) ;
 int ix86_expand_sse_movcc (int ,int ,int ,int ) ;
 int ix86_prepare_sse_fp_compare_args (int ,int,int *,int *) ;

bool
ix86_expand_fp_vcond (rtx operands[])
{
  enum rtx_code code = GET_CODE (operands[3]);
  rtx cmp;

  code = ix86_prepare_sse_fp_compare_args (operands[0], code,
        &operands[4], &operands[5]);
  if (code == UNKNOWN)
    return 0;

  if (ix86_expand_sse_fp_minmax (operands[0], code, operands[4],
     operands[5], operands[1], operands[2]))
    return 1;

  cmp = ix86_expand_sse_cmp (operands[0], code, operands[4], operands[5],
        operands[1], operands[2]);
  ix86_expand_sse_movcc (operands[0], cmp, operands[1], operands[2]);
  return 1;
}
