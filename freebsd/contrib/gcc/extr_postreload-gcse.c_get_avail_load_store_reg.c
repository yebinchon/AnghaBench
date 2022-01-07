
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int PATTERN (int ) ;
 scalar_t__ REG_P (int ) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int gcc_assert (scalar_t__) ;

__attribute__((used)) static rtx
get_avail_load_store_reg (rtx insn)
{
  if (REG_P (SET_DEST (PATTERN (insn))))

    return SET_DEST(PATTERN(insn));
  else
    {

      gcc_assert (REG_P (SET_SRC (PATTERN (insn))));
      return SET_SRC (PATTERN (insn));
    }
}
