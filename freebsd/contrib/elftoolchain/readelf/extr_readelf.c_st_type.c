
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_stype ;


 unsigned int ELFOSABI_FREEBSD ;
 unsigned int ELFOSABI_GNU ;
 unsigned int EM_SPARCV9 ;



 unsigned int STT_GNU_IFUNC ;
 unsigned int STT_HIOS ;
 unsigned int STT_HIPROC ;
 unsigned int STT_LOOS ;
 unsigned int STT_LOPROC ;



 unsigned int STT_SPARC_REGISTER ;

 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
st_type(unsigned int mach, unsigned int os, unsigned int stype)
{
 static char s_stype[32];

 switch (stype) {
 case 131: return "NOTYPE";
 case 130: return "OBJECT";
 case 132: return "FUNC";
 case 129: return "SECTION";
 case 133: return "FILE";
 case 134: return "COMMON";
 case 128: return "TLS";
 default:
  if (stype >= STT_LOOS && stype <= STT_HIOS) {
   if ((os == ELFOSABI_GNU || os == ELFOSABI_FREEBSD) &&
       stype == STT_GNU_IFUNC)
    return "IFUNC";
   snprintf(s_stype, sizeof(s_stype), "OS+%#x",
       stype - STT_LOOS);
  } else if (stype >= STT_LOPROC && stype <= STT_HIPROC) {
   if (mach == EM_SPARCV9 && stype == STT_SPARC_REGISTER)
    return "REGISTER";
   snprintf(s_stype, sizeof(s_stype), "PROC+%#x",
       stype - STT_LOPROC);
  } else
   snprintf(s_stype, sizeof(s_stype), "<unknown: %#x>",
       stype);
  return (s_stype);
 }
}
