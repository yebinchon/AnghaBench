
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change_cc_mode_args {scalar_t__ newreg; int insn; } ;
typedef scalar_t__ rtx ;


 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int validate_change (int ,scalar_t__*,scalar_t__,int) ;

__attribute__((used)) static int
cse_change_cc_mode (rtx *loc, void *data)
{
  struct change_cc_mode_args* args = (struct change_cc_mode_args*)data;

  if (*loc
      && REG_P (*loc)
      && REGNO (*loc) == REGNO (args->newreg)
      && GET_MODE (*loc) != GET_MODE (args->newreg))
    {
      validate_change (args->insn, loc, args->newreg, 1);

      return -1;
    }
  return 0;
}
