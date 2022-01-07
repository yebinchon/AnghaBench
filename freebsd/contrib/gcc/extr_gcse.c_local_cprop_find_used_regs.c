
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int BITS_PER_WORD ;
 int GET_CODE (scalar_t__) ;
 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int ) ;
 int SUBREG_REG (scalar_t__) ;

 int find_used_regs (scalar_t__*,void*) ;

__attribute__((used)) static void
local_cprop_find_used_regs (rtx *xptr, void *data)
{
  rtx x = *xptr;

  if (x == 0)
    return;

  switch (GET_CODE (x))
    {
    case 128:
    case 131:
    case 130:
      return;

    case 134:
    case 133:
    case 137:
    case 136:
    case 132:
    case 135:



      return;

    case 129:


      if (GET_MODE_BITSIZE (GET_MODE (SUBREG_REG (x))) > BITS_PER_WORD)
 return;
      break;

    default:
      break;
    }

  find_used_regs (xptr, data);
}
