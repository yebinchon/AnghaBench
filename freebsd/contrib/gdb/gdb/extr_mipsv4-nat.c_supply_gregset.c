
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * gregset_t ;
typedef int greg_t ;
struct TYPE_2__ {int pc; int hi; int lo; int cause; int badvaddr; } ;


 int CXT_CAUSE ;
 int CXT_EPC ;
 int CXT_MDHI ;
 int CXT_MDLO ;
 int CXT_RA ;
 int DEPRECATED_FP_REGNUM ;
 int FIRST_EMBED_REGNUM ;
 int LAST_EMBED_REGNUM ;
 int MAX_REGISTER_SIZE ;
 int PS_REGNUM ;
 int UNUSED_REGNUM ;
 int current_gdbarch ;
 int memset (char*,int ,int) ;
 TYPE_1__* mips_regnum (int ) ;
 int supply_register (int,char*) ;

void
supply_gregset (gregset_t *gregsetp)
{
  int regi;
  greg_t *regp = &(*gregsetp)[0];
  char zerobuf[MAX_REGISTER_SIZE];
  memset (zerobuf, 0, MAX_REGISTER_SIZE);

  for (regi = 0; regi <= CXT_RA; regi++)
    supply_register (regi, (char *) (regp + regi));

  supply_register (mips_regnum (current_gdbarch)->pc,
     (char *) (regp + CXT_EPC));
  supply_register (mips_regnum (current_gdbarch)->hi,
     (char *) (regp + CXT_MDHI));
  supply_register (mips_regnum (current_gdbarch)->lo,
     (char *) (regp + CXT_MDLO));
  supply_register (mips_regnum (current_gdbarch)->cause,
     (char *) (regp + CXT_CAUSE));


  supply_register (PS_REGNUM, zerobuf);
  supply_register (mips_regnum (current_gdbarch)->badvaddr, zerobuf);
  supply_register (DEPRECATED_FP_REGNUM, zerobuf);
  supply_register (UNUSED_REGNUM, zerobuf);
  for (regi = FIRST_EMBED_REGNUM; regi <= LAST_EMBED_REGNUM; regi++)
    supply_register (regi, zerobuf);
}
