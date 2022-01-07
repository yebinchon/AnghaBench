
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int emulation_name; } ;
typedef TYPE_1__ ld_emulation_xfer_type ;


 char* _ (char*) ;
 int einfo (char*,...) ;
 TYPE_1__* ld_emulation ;
 TYPE_1__** ld_emulations ;
 int ldemul_list_emulations (int ) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;

void
ldemul_choose_mode (char *target)
{
  ld_emulation_xfer_type **eptr = ld_emulations;

  if (target[0] == 'g' && target[1] == 'l' && target[2] == 'd')
    target += 3;
  for (; *eptr; eptr++)
    {
      if (strcmp (target, (*eptr)->emulation_name) == 0)
 {
   ld_emulation = *eptr;
   return;
 }
    }
  einfo (_("%P: unrecognised emulation mode: %s\n"), target);
  einfo (_("Supported emulations: "));
  ldemul_list_emulations (stderr);
  einfo ("%F\n");
}
