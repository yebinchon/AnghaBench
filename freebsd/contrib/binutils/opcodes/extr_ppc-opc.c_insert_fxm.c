
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_OPCODE_ANY ;
 int PPC_OPCODE_POWER4 ;
 char* _ (char*) ;

__attribute__((used)) static unsigned long
insert_fxm (unsigned long insn,
     long value,
     int dialect,
     const char **errmsg)
{


  if ((insn & (1 << 20)) != 0)
    {
      if (value == 0 || (value & -value) != value)
 {
   *errmsg = _("invalid mask field");
   value = 0;
 }
    }





  else if (value == 0)
    ;






  else if ((value & -value) == value
    && ((dialect & PPC_OPCODE_POWER4) != 0
        || ((dialect & PPC_OPCODE_ANY) != 0
     && (insn & (0x3ff << 1)) == 19 << 1)))
    insn |= 1 << 20;


  else if ((insn & (0x3ff << 1)) == 19 << 1)
    {
      *errmsg = _("ignoring invalid mfcr mask");
      value = 0;
    }

  return insn | ((value & 0xff) << 12);
}
