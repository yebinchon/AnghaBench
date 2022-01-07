
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 int CONST_DOUBLE ;
 int CONST_VECTOR ;
 int CONST_VECTOR_ELT (int ,int) ;
 int CONST_VECTOR_NUNITS (int ) ;
 int GET_CODE (int ) ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_SIZE (int) ;
 unsigned int MIN (unsigned int,int ) ;






 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int ) ;
 int assemble_integer (int ,int ,unsigned int,int) ;
 int assemble_real (int ,int,unsigned int) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

__attribute__((used)) static void
output_constant_pool_2 (enum machine_mode mode, rtx x, unsigned int align)
{
  switch (GET_MODE_CLASS (mode))
    {
    case 132:
    case 133:
      {
 REAL_VALUE_TYPE r;

 gcc_assert (GET_CODE (x) == CONST_DOUBLE);
 REAL_VALUE_FROM_CONST_DOUBLE (r, x);
 assemble_real (r, mode, align);
 break;
      }

    case 131:
    case 130:
      assemble_integer (x, GET_MODE_SIZE (mode), align, 1);
      break;

    case 129:
    case 128:
      {
 int i, units;
        enum machine_mode submode = GET_MODE_INNER (mode);
 unsigned int subalign = MIN (align, GET_MODE_BITSIZE (submode));

 gcc_assert (GET_CODE (x) == CONST_VECTOR);
 units = CONST_VECTOR_NUNITS (x);

 for (i = 0; i < units; i++)
   {
     rtx elt = CONST_VECTOR_ELT (x, i);
     output_constant_pool_2 (submode, elt, i ? subalign : align);
   }
      }
      break;

    default:
      gcc_unreachable ();
    }
}
