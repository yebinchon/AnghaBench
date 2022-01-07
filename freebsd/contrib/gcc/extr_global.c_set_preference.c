
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int REGMODE_NATURAL_SIZE (size_t) ;
 unsigned int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int SET_REGBIT (int ,scalar_t__,unsigned int) ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int XEXP (int ,int ) ;
 int hard_reg_copy_preferences ;
 int hard_reg_full_preferences ;
 int hard_reg_preferences ;
 unsigned int** hard_regno_nregs ;
 scalar_t__* reg_allocno ;
 unsigned int* reg_renumber ;
 scalar_t__ subreg_regno_offset (unsigned int,size_t,int,size_t) ;

__attribute__((used)) static void
set_preference (rtx dest, rtx src)
{
  unsigned int src_regno, dest_regno;


  int offset = 0;
  unsigned int i;
  int copy = 1;

  if (GET_RTX_FORMAT (GET_CODE (src))[0] == 'e')
    src = XEXP (src, 0), copy = 0;




  if (REG_P (src))
    src_regno = REGNO (src);
  else if (GET_CODE (src) == SUBREG && REG_P (SUBREG_REG (src)))
    {
      src_regno = REGNO (SUBREG_REG (src));

      if (REGNO (SUBREG_REG (src)) < FIRST_PSEUDO_REGISTER)
 offset += subreg_regno_offset (REGNO (SUBREG_REG (src)),
           GET_MODE (SUBREG_REG (src)),
           SUBREG_BYTE (src),
           GET_MODE (src));
      else
 offset += (SUBREG_BYTE (src)
     / REGMODE_NATURAL_SIZE (GET_MODE (src)));
    }
  else
    return;

  if (REG_P (dest))
    dest_regno = REGNO (dest);
  else if (GET_CODE (dest) == SUBREG && REG_P (SUBREG_REG (dest)))
    {
      dest_regno = REGNO (SUBREG_REG (dest));

      if (REGNO (SUBREG_REG (dest)) < FIRST_PSEUDO_REGISTER)
 offset -= subreg_regno_offset (REGNO (SUBREG_REG (dest)),
           GET_MODE (SUBREG_REG (dest)),
           SUBREG_BYTE (dest),
           GET_MODE (dest));
      else
 offset -= (SUBREG_BYTE (dest)
     / REGMODE_NATURAL_SIZE (GET_MODE (dest)));
    }
  else
    return;



  if (reg_renumber[src_regno] >= 0)
    src_regno = reg_renumber[src_regno];

  if (reg_renumber[dest_regno] >= 0)
    dest_regno = reg_renumber[dest_regno];




  if (dest_regno < FIRST_PSEUDO_REGISTER && src_regno >= FIRST_PSEUDO_REGISTER
      && reg_allocno[src_regno] >= 0)
    {
      dest_regno -= offset;
      if (dest_regno < FIRST_PSEUDO_REGISTER)
 {
   if (copy)
     SET_REGBIT (hard_reg_copy_preferences,
   reg_allocno[src_regno], dest_regno);

   SET_REGBIT (hard_reg_preferences,
        reg_allocno[src_regno], dest_regno);
   for (i = dest_regno;
        i < dest_regno + hard_regno_nregs[dest_regno][GET_MODE (dest)];
        i++)
     SET_REGBIT (hard_reg_full_preferences, reg_allocno[src_regno], i);
 }
    }

  if (src_regno < FIRST_PSEUDO_REGISTER && dest_regno >= FIRST_PSEUDO_REGISTER
      && reg_allocno[dest_regno] >= 0)
    {
      src_regno += offset;
      if (src_regno < FIRST_PSEUDO_REGISTER)
 {
   if (copy)
     SET_REGBIT (hard_reg_copy_preferences,
   reg_allocno[dest_regno], src_regno);

   SET_REGBIT (hard_reg_preferences,
        reg_allocno[dest_regno], src_regno);
   for (i = src_regno;
        i < src_regno + hard_regno_nregs[src_regno][GET_MODE (src)];
        i++)
     SET_REGBIT (hard_reg_full_preferences, reg_allocno[dest_regno], i);
 }
    }
}
