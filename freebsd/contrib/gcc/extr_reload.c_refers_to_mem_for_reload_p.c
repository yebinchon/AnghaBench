
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 size_t FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int ) ;
 int GET_RTX_LENGTH (int ) ;
 scalar_t__ MEM_P (int ) ;
 size_t REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int XEXP (int ,int) ;
 scalar_t__* reg_equiv_memory_loc ;

__attribute__((used)) static int
refers_to_mem_for_reload_p (rtx x)
{
  const char *fmt;
  int i;

  if (MEM_P (x))
    return 1;

  if (REG_P (x))
    return (REGNO (x) >= FIRST_PSEUDO_REGISTER
     && reg_equiv_memory_loc[REGNO (x)]);

  fmt = GET_RTX_FORMAT (GET_CODE (x));
  for (i = GET_RTX_LENGTH (GET_CODE (x)) - 1; i >= 0; i--)
    if (fmt[i] == 'e'
 && (MEM_P (XEXP (x, i))
     || refers_to_mem_for_reload_p (XEXP (x, i))))
      return 1;

  return 0;
}
