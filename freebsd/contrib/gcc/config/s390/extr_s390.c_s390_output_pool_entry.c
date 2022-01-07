
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 int CONST_DOUBLE ;
 int GET_CODE (int ) ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;



 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int ) ;
 int assemble_integer (int ,int ,unsigned int,int) ;
 int assemble_real (int ,int,unsigned int) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

void
s390_output_pool_entry (rtx exp, enum machine_mode mode, unsigned int align)
{
  REAL_VALUE_TYPE r;

  switch (GET_MODE_CLASS (mode))
    {
    case 129:
    case 130:
      gcc_assert (GET_CODE (exp) == CONST_DOUBLE);

      REAL_VALUE_FROM_CONST_DOUBLE (r, exp);
      assemble_real (r, mode, align);
      break;

    case 128:
      assemble_integer (exp, GET_MODE_SIZE (mode), align, 1);
      break;

    default:
      gcc_unreachable ();
    }
}
