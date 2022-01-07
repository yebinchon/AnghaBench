
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_data {TYPE_1__* operand; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum extraction_pattern { ____Placeholder_extraction_pattern } extraction_pattern ;
struct TYPE_2__ {int mode; } ;


 size_t CODE_FOR_extv ;
 size_t CODE_FOR_extzv ;
 size_t CODE_FOR_insv ;



 int HAVE_extv ;
 int HAVE_extzv ;
 int HAVE_insv ;
 int MAX_MACHINE_MODE ;
 int VOIDmode ;
 int gcc_unreachable () ;
 struct insn_data* insn_data ;
 int word_mode ;

enum machine_mode
mode_for_extraction (enum extraction_pattern pattern, int opno)
{
  const struct insn_data *data;

  switch (pattern)
    {
    case 128:
      if (HAVE_insv)
 {
   data = &insn_data[CODE_FOR_insv];
   break;
 }
      return MAX_MACHINE_MODE;

    case 130:
      if (HAVE_extv)
 {
   data = &insn_data[CODE_FOR_extv];
   break;
 }
      return MAX_MACHINE_MODE;

    case 129:
      if (HAVE_extzv)
 {
   data = &insn_data[CODE_FOR_extzv];
   break;
 }
      return MAX_MACHINE_MODE;

    default:
      gcc_unreachable ();
    }

  if (opno == -1)
    return VOIDmode;



  if (data->operand[opno].mode == VOIDmode)
    return word_mode;
  return data->operand[opno].mode;
}
