
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;





 int DImode ;
 int FLOAT_MODE_P (int) ;

 int FRAME_REGNO_P (unsigned int) ;

 int GET_MODE_CLASS (int) ;
 int MODE_CC ;
 int MODE_VECTOR_FLOAT ;
 int Pmode ;
 int REGNO_PAIR_OK (unsigned int,int) ;
 int REGNO_REG_CLASS (unsigned int) ;
 int SImode ;
 int TARGET_64BIT ;
 int TCmode ;
 int TDmode ;
 int TFmode ;

bool
s390_hard_regno_mode_ok (unsigned int regno, enum machine_mode mode)
{
  switch (REGNO_REG_CLASS (regno))
    {
    case 129:
      if (REGNO_PAIR_OK (regno, mode))
 {
   if (mode == SImode || mode == DImode)
     return 1;

   if (FLOAT_MODE_P (mode) && GET_MODE_CLASS (mode) != MODE_VECTOR_FLOAT)
     return 1;
 }
      break;
    case 131:
      if (FRAME_REGNO_P (regno) && mode == Pmode)
 return 1;


    case 128:
      if (REGNO_PAIR_OK (regno, mode))
 {
   if (TARGET_64BIT
       || (mode != TFmode && mode != TCmode && mode != TDmode))
     return 1;
 }
      break;
    case 130:
      if (GET_MODE_CLASS (mode) == MODE_CC)
 return 1;
      break;
    case 132:
      if (REGNO_PAIR_OK (regno, mode))
 {
   if (mode == SImode || mode == Pmode)
     return 1;
 }
      break;
    default:
      return 0;
    }

  return 0;
}
