
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 scalar_t__ CONST_STRNEQ (char*,char*) ;
 int NUM_ARM_REGNAMES ;
 char* _ (char*) ;
 int force_thumb ;
 int fprintf (int ,char*,char*) ;
 int regname_selected ;
 TYPE_1__* regnames ;
 int stderr ;
 int strlen (int ) ;
 scalar_t__ strneq (char*,int ,int ) ;

void
parse_arm_disassembler_option (char *option)
{
  if (option == ((void*)0))
    return;

  if (CONST_STRNEQ (option, "reg-names-"))
    {
      int i;

      option += 10;

      for (i = NUM_ARM_REGNAMES; i--;)
 if (strneq (option, regnames[i].name, strlen (regnames[i].name)))
   {
     regname_selected = i;
     break;
   }

      if (i < 0)

 fprintf (stderr, _("Unrecognised register name set: %s\n"), option);
    }
  else if (CONST_STRNEQ (option, "force-thumb"))
    force_thumb = 1;
  else if (CONST_STRNEQ (option, "no-force-thumb"))
    force_thumb = 0;
  else

    fprintf (stderr, _("Unrecognised disassembler option: %s\n"), option);

  return;
}
