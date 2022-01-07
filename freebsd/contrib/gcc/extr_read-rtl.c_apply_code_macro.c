
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int PUT_CODE (int ,int) ;

__attribute__((used)) static void
apply_code_macro (rtx x, int code)
{
  PUT_CODE (x, (enum rtx_code) code);
}
