
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X_add_number; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int ERROR_EXPONENT_OVERFLOW ;
 int EXP_CHARS ;
 int O_big ;
 int _ (char*) ;
 int as_bad (int ,...) ;
 int atof_generic (int *,char*,int ,int *) ;
 int generic_floating_point_number ;
 int input_line_pointer ;

__attribute__((used)) static void
floating_constant (expressionS *expressionP)
{

  int error_code;

  error_code = atof_generic (&input_line_pointer, ".", EXP_CHARS,
        &generic_floating_point_number);

  if (error_code)
    {
      if (error_code == ERROR_EXPONENT_OVERFLOW)
 {
   as_bad (_("bad floating-point constant: exponent overflow"));
 }
      else
 {
   as_bad (_("bad floating-point constant: unknown error code=%d"),
    error_code);
 }
    }
  expressionP->X_op = O_big;


  expressionP->X_add_number = -1;
}
