
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int TARGET_ALTIVEC ;
 int rs6000_emit_vector_compare (int,int ,int ,int) ;
 int rs6000_emit_vector_select (int ,int ,int ,int ) ;

int
rs6000_emit_vector_cond_expr (rtx dest, rtx op1, rtx op2,
         rtx cond, rtx cc_op0, rtx cc_op1)
{
  enum machine_mode dest_mode = GET_MODE (dest);
  enum rtx_code rcode = GET_CODE (cond);
  rtx mask;

  if (!TARGET_ALTIVEC)
    return 0;


  mask = rs6000_emit_vector_compare (rcode, cc_op0, cc_op1, dest_mode);

  rs6000_emit_vector_select (dest, op1, op2, mask);

  return 1;
}
