
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int REGNO (int ) ;
 int REGNO_REG_SET_P (void*,int ) ;
 int REG_P (int ) ;

__attribute__((used)) static int
altered_reg_used (rtx *reg, void *alt)
{
  if (!REG_P (*reg))
    return 0;

  return REGNO_REG_SET_P (alt, REGNO (*reg));
}
