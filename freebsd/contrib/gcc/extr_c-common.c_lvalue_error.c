
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lvalue_use { ____Placeholder_lvalue_use } lvalue_use ;


 int error (char*) ;
 int gcc_unreachable () ;






void
lvalue_error (enum lvalue_use use)
{
  switch (use)
    {
    case 130:
      error ("lvalue required as left operand of assignment");
      break;
    case 128:
      error ("lvalue required as increment operand");
      break;
    case 129:
      error ("lvalue required as decrement operand");
      break;
    case 132:
      error ("lvalue required as unary %<&%> operand");
      break;
    case 131:
      error ("lvalue required in asm statement");
      break;
    default:
      gcc_unreachable ();
    }
}
