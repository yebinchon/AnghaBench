
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 scalar_t__ adjust_address (scalar_t__,int ,int) ;
 scalar_t__ gen_rtx_REG_offset (scalar_t__,int ,unsigned int,int) ;
 scalar_t__ simplify_subreg (int ,scalar_t__,int ,int) ;
 unsigned int subreg_regno (scalar_t__) ;

rtx
alter_subreg (rtx *xp)
{
  rtx x = *xp;
  rtx y = SUBREG_REG (x);



  if (MEM_P (y))
    {
      int offset = SUBREG_BYTE (x);



      if (offset == 0
   && GET_MODE_SIZE (GET_MODE (y)) < GET_MODE_SIZE (GET_MODE (x)))
        {
          int difference = GET_MODE_SIZE (GET_MODE (y))
      - GET_MODE_SIZE (GET_MODE (x));
          if (WORDS_BIG_ENDIAN)
            offset += (difference / UNITS_PER_WORD) * UNITS_PER_WORD;
          if (BYTES_BIG_ENDIAN)
            offset += difference % UNITS_PER_WORD;
        }

      *xp = adjust_address (y, GET_MODE (x), offset);
    }
  else
    {
      rtx new = simplify_subreg (GET_MODE (x), y, GET_MODE (y),
     SUBREG_BYTE (x));

      if (new != 0)
 *xp = new;
      else if (REG_P (y))
 {

   unsigned int regno = subreg_regno (x);
   *xp = gen_rtx_REG_offset (y, GET_MODE (x), regno, SUBREG_BYTE (x));
 }
    }

  return *xp;
}
