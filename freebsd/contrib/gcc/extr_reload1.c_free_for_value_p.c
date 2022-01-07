
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reload_type { ____Placeholder_reload_type } reload_type ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int** hard_regno_nregs ;
 int reload_reg_free_for_value_p (int,int,int,int,int ,int ,int,int) ;

__attribute__((used)) static int
free_for_value_p (int regno, enum machine_mode mode, int opnum,
    enum reload_type type, rtx value, rtx out, int reloadnum,
    int ignore_address_reloads)
{
  int nregs = hard_regno_nregs[regno][mode];
  while (nregs-- > 0)
    if (! reload_reg_free_for_value_p (regno, regno + nregs, opnum, type,
           value, out, reloadnum,
           ignore_address_reloads))
      return 0;
  return 1;
}
