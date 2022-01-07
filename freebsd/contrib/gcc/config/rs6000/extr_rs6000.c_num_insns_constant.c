
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;
typedef int HOST_WIDE_INT ;



 int CONST_DOUBLE_HIGH (int ) ;
 int CONST_DOUBLE_LOW (int ) ;

 int DImode ;
 int GET_CODE (int ) ;
 int INTVAL (int ) ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int ) ;
 int REAL_VALUE_TO_TARGET_DOUBLE (int ,long*) ;
 int REAL_VALUE_TO_TARGET_SINGLE (int ,long) ;
 int SFmode ;
 int TARGET_32BIT ;
 int VOIDmode ;
 int WORDS_BIG_ENDIAN ;
 int gcc_unreachable () ;
 int mask64_operand (int ,int) ;
 int num_insns_constant_wide (int) ;

int
num_insns_constant (rtx op, enum machine_mode mode)
{
  HOST_WIDE_INT low, high;

  switch (GET_CODE (op))
    {
    case 128:






 return num_insns_constant_wide (INTVAL (op));

      case 129:
 if (mode == SFmode)
   {
     long l;
     REAL_VALUE_TYPE rv;

     REAL_VALUE_FROM_CONST_DOUBLE (rv, op);
     REAL_VALUE_TO_TARGET_SINGLE (rv, l);
     return num_insns_constant_wide ((HOST_WIDE_INT) l);
   }

 if (mode == VOIDmode || mode == DImode)
   {
     high = CONST_DOUBLE_HIGH (op);
     low = CONST_DOUBLE_LOW (op);
   }
 else
   {
     long l[2];
     REAL_VALUE_TYPE rv;

     REAL_VALUE_FROM_CONST_DOUBLE (rv, op);
     REAL_VALUE_TO_TARGET_DOUBLE (rv, l);
     high = l[WORDS_BIG_ENDIAN == 0];
     low = l[WORDS_BIG_ENDIAN != 0];
   }

 if (TARGET_32BIT)
   return (num_insns_constant_wide (low)
    + num_insns_constant_wide (high));
 else
   {
     if ((high == 0 && low >= 0)
  || (high == -1 && low < 0))
       return num_insns_constant_wide (low);

     else if (mask64_operand (op, mode))
       return 2;

     else if (low == 0)
       return num_insns_constant_wide (high) + 1;

     else
       return (num_insns_constant_wide (high)
        + num_insns_constant_wide (low) + 1);
   }

    default:
      gcc_unreachable ();
    }
}
