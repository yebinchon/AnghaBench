
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix86_address {scalar_t__ base; scalar_t__ index; scalar_t__ disp; scalar_t__ seg; int scale; } ;
typedef int rtx ;


 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ REGNO (scalar_t__) ;
 int REG_P (scalar_t__) ;
 scalar_t__ SEG_DEFAULT ;
 scalar_t__ SUBREG ;
 void* SUBREG_REG (scalar_t__) ;
 scalar_t__ TARGET_K6 ;
 scalar_t__ const0_rtx ;
 int gcc_assert (int) ;
 int ix86_decompose_address (int ,struct ix86_address*) ;

__attribute__((used)) static int
ix86_address_cost (rtx x)
{
  struct ix86_address parts;
  int cost = 1;
  int ok = ix86_decompose_address (x, &parts);

  gcc_assert (ok);

  if (parts.base && GET_CODE (parts.base) == SUBREG)
    parts.base = SUBREG_REG (parts.base);
  if (parts.index && GET_CODE (parts.index) == SUBREG)
    parts.index = SUBREG_REG (parts.index);


  if (parts.disp && parts.disp != const0_rtx)
    cost--;
  if (parts.seg != SEG_DEFAULT)
    cost--;


  if ((parts.base
       && (!REG_P (parts.base) || REGNO (parts.base) >= FIRST_PSEUDO_REGISTER))
      || (parts.index
   && (!REG_P (parts.index)
       || REGNO (parts.index) >= FIRST_PSEUDO_REGISTER)))
    cost++;

  if (parts.base
      && (!REG_P (parts.base) || REGNO (parts.base) >= FIRST_PSEUDO_REGISTER)
      && parts.index
      && (!REG_P (parts.index) || REGNO (parts.index) >= FIRST_PSEUDO_REGISTER)
      && parts.base != parts.index)
    cost++;
  if (TARGET_K6
      && ((!parts.disp && parts.base && parts.index && parts.scale != 1)
   || (parts.disp && !parts.base && parts.index && parts.scale != 1)
   || (!parts.disp && parts.base && parts.index && parts.scale == 1)))
    cost += 10;

  return cost;
}
