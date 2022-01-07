
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int description; } ;
typedef int FILE ;


 int NUM_ARM_REGNAMES ;
 char* _ (char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_1__* regnames ;
 int strlen (char*) ;

void
print_arm_disassembler_options (FILE *stream)
{
  int i;

  fprintf (stream, _("\nThe following ARM specific disassembler options are supported for use with\nthe -M switch:\n"));



  for (i = NUM_ARM_REGNAMES; i--;)
    fprintf (stream, "  reg-names-%s %*c%s\n",
      regnames[i].name,
      (int)(14 - strlen (regnames[i].name)), ' ',
      regnames[i].description);

  fprintf (stream, "  force-thumb              Assume all insns are Thumb insns\n");
  fprintf (stream, "  no-force-thumb           Examine preceeding label to determine an insn's type\n\n");
}
