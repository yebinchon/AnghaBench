
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_CODE (int ) ;


 int SYMBOL_REF_LOCAL_P (int ) ;

__attribute__((used)) static int
compute_reloc_for_rtx_1 (rtx *xp, void *data)
{
  int *preloc = data;
  rtx x = *xp;

  switch (GET_CODE (x))
    {
    case 128:
      *preloc |= SYMBOL_REF_LOCAL_P (x) ? 1 : 2;
      break;
    case 129:
      *preloc |= 1;
      break;
    default:
      break;
    }

  return 0;
}
