
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 unsigned int BITS_PER_UNIT ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int HARD_FRAME_POINTER_REGNUM ;
 int INTVAL (scalar_t__) ;
 scalar_t__ LO_SUM ;
 scalar_t__ MEM ;
 unsigned int MEM_ALIGN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 int REGNO (scalar_t__) ;
 int REGNO_POINTER_ALIGN (int) ;
 int SPARC_STACK_BIAS ;
 int STACK_POINTER_REGNUM ;
 int TARGET_UNALIGNED_DOUBLES ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ cfun ;
 scalar_t__ const0_rtx ;
 scalar_t__ optimize ;
 scalar_t__ reload_completed ;

int
mem_min_alignment (rtx mem, int desired)
{
  rtx addr, base, offset;


  if (GET_CODE (mem) != MEM)
    return 0;


  if (!TARGET_UNALIGNED_DOUBLES
      && MEM_ALIGN (mem) / BITS_PER_UNIT >= (unsigned)desired)
    return 1;



  addr = XEXP (mem, 0);
  base = offset = NULL_RTX;
  if (GET_CODE (addr) == PLUS)
    {
      if (GET_CODE (XEXP (addr, 0)) == REG)
 {
   base = XEXP (addr, 0);





   if (GET_CODE (XEXP (addr, 1)) == CONST_INT)
     offset = XEXP (addr, 1);
   else
     offset = const0_rtx;
 }
    }
  else if (GET_CODE (addr) == REG)
    {
      base = addr;
      offset = const0_rtx;
    }

  if (base != NULL_RTX)
    {
      int regno = REGNO (base);

      if (regno != HARD_FRAME_POINTER_REGNUM && regno != STACK_POINTER_REGNUM)
 {





   if (((cfun != 0
  && REGNO_POINTER_ALIGN (regno) >= desired * BITS_PER_UNIT)
        || (optimize && reload_completed))
       && (INTVAL (offset) & (desired - 1)) == 0)
     return 1;
 }
      else
 {
   if (((INTVAL (offset) - SPARC_STACK_BIAS) & (desired - 1)) == 0)
     return 1;
 }
    }
  else if (! TARGET_UNALIGNED_DOUBLES
    || CONSTANT_P (addr)
    || GET_CODE (addr) == LO_SUM)
    {



      return 1;
    }


  return 0;
}
