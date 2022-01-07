
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int COMPARISON_P (int ) ;
 int GET_CODE (int ) ;
 int UNKNOWN ;
 int XEXP (int ,int) ;
 int reversed_comparison_code_parts (int ,int ,int ,int ) ;

enum rtx_code
reversed_comparison_code (rtx comparison, rtx insn)
{
  if (!COMPARISON_P (comparison))
    return UNKNOWN;
  return reversed_comparison_code_parts (GET_CODE (comparison),
      XEXP (comparison, 0),
      XEXP (comparison, 1), insn);
}
