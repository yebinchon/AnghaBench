
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_ptype ;
 unsigned int PT_HIOS ;
 unsigned int PT_HIPROC ;


 unsigned int PT_LOOS ;
 unsigned int PT_LOPROC ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
phdr_type(unsigned int mach, unsigned int ptype)
{
 static char s_ptype[32];

 if (ptype >= PT_LOPROC && ptype <= PT_HIPROC) {
  switch (mach) {
  case 144:
   switch (ptype) {
   case 143: return "ARM_ARCHEXT";
   case 142: return "ARM_EXIDX";
   }
   break;
  }
  snprintf(s_ptype, sizeof(s_ptype), "LOPROC+%#x",
      ptype - PT_LOPROC);
  return (s_ptype);
 }

 switch (ptype) {
 case 134: return "NULL";
 case 136: return "LOAD";
 case 141: return "DYNAMIC";
 case 137: return "INTERP";
 case 135: return "NOTE";
 case 129: return "SHLIB";
 case 130: return "PHDR";
 case 128: return "TLS";
 case 140: return "GNU_EH_FRAME";
 case 138: return "GNU_STACK";
 case 139: return "GNU_RELRO";
 case 132: return "OPENBSD_RANDOMIZE";
 case 131: return "OPENBSD_WXNEEDED";
 case 133: return "OPENBSD_BOOTDATA";
 default:
  if (ptype >= PT_LOOS && ptype <= PT_HIOS)
   snprintf(s_ptype, sizeof(s_ptype), "LOOS+%#x",
       ptype - PT_LOOS);
  else
   snprintf(s_ptype, sizeof(s_ptype), "<unknown: %#x>",
       ptype);
  return (s_ptype);
 }
}
