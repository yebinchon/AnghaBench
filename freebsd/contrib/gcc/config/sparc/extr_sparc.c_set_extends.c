
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int CONST_DOUBLE_LOW (int ) ;



 int GET_CODE (int ) ;
 int GET_MODE (int ) ;




 int INTVAL (int ) ;
 int PATTERN (int ) ;

 int SET_SRC (int ) ;

 int SImode ;
 int XEXP (int ,int) ;


 int sparc_check_64 (int ,int ) ;

__attribute__((used)) static int
set_extends (rtx insn)
{
  register rtx pat = PATTERN (insn);

  switch (GET_CODE (SET_SRC (pat)))
    {

    case 133:
    case 128:

    case 141:


    case 137:

    case 135: case 134:
    case 143: case 142:
    case 139: case 138:
    case 145: case 144:
    case 146:
    case 132:
      return 1;
    case 150:
      {
 rtx op0 = XEXP (SET_SRC (pat), 0);
 rtx op1 = XEXP (SET_SRC (pat), 1);
 if (GET_CODE (op1) == 147)
   return INTVAL (op1) >= 0;
 if (GET_CODE (op0) != 131)
   return 0;
 if (sparc_check_64 (op0, insn) == 1)
   return 1;
 return (GET_CODE (op1) == 131 && sparc_check_64 (op1, insn) == 1);
      }
    case 140:
    case 129:
      {
 rtx op0 = XEXP (SET_SRC (pat), 0);
 rtx op1 = XEXP (SET_SRC (pat), 1);
 if (GET_CODE (op0) != 131 || sparc_check_64 (op0, insn) <= 0)
   return 0;
 if (GET_CODE (op1) == 147)
   return INTVAL (op1) >= 0;
 return (GET_CODE (op1) == 131 && sparc_check_64 (op1, insn) == 1);
      }
    case 136:
      return GET_MODE (SET_SRC (pat)) == SImode;

    case 148:
      return ! (CONST_DOUBLE_LOW (SET_SRC (pat)) & 0x80000000);
    case 147:
      return ! (INTVAL (SET_SRC (pat)) & 0x80000000);
    case 149:
    case 130:
      return - (GET_MODE (SET_SRC (pat)) == SImode);
    case 131:
      return sparc_check_64 (SET_SRC (pat), insn);
    default:
      return 0;
    }
}
