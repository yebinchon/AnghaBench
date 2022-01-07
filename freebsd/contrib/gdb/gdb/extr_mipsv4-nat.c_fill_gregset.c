
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * gregset_t ;
typedef int greg_t ;
struct TYPE_2__ {int pc; int cause; int hi; int lo; } ;


 int CXT_CAUSE ;
 int CXT_EPC ;
 int CXT_MDHI ;
 int CXT_MDLO ;
 size_t DEPRECATED_REGISTER_BYTE (int) ;
 int current_gdbarch ;
 int * deprecated_registers ;
 TYPE_1__* mips_regnum (int ) ;

void
fill_gregset (gregset_t *gregsetp, int regno)
{
  int regi;
  greg_t *regp = &(*gregsetp)[0];

  for (regi = 0; regi <= 32; regi++)
    if ((regno == -1) || (regno == regi))
      *(regp + regi) = *(greg_t *) & deprecated_registers[DEPRECATED_REGISTER_BYTE (regi)];

  if ((regno == -1) || (regno == mips_regnum (current_gdbarch)->pc))
    *(regp + CXT_EPC) = *(greg_t *) & deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->pc)];

  if ((regno == -1) || (regno == mips_regnum (current_gdbarch)->cause))
    *(regp + CXT_CAUSE) = *(greg_t *) & deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->cause)];

  if ((regno == -1) || (regno == mips_regnum (current_gdbarch)->hi))
    *(regp + CXT_MDHI) = *(greg_t *) & deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->hi)];

  if ((regno == -1) || (regno == mips_regnum (current_gdbarch)->lo))
    *(regp + CXT_MDLO) = *(greg_t *) & deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->lo)];
}
