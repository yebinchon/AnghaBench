
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GEN_INT (int) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;




 int XEXP (int ,int ) ;
 int canon_rtx (int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;

__attribute__((used)) static rtx
addr_side_effect_eval (rtx addr, int size, int n_refs)
{
  int offset = 0;

  switch (GET_CODE (addr))
    {
    case 128:
      offset = (n_refs + 1) * size;
      break;
    case 129:
      offset = -(n_refs + 1) * size;
      break;
    case 130:
      offset = n_refs * size;
      break;
    case 131:
      offset = -n_refs * size;
      break;

    default:
      return addr;
    }

  if (offset)
    addr = gen_rtx_PLUS (GET_MODE (addr), XEXP (addr, 0),
    GEN_INT (offset));
  else
    addr = XEXP (addr, 0);
  addr = canon_rtx (addr);

  return addr;
}
