
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buff ;
struct TYPE_2__ {int e_machine; } ;


 int EM_ARM ;
 int EM_PARISC ;
 int EM_SPARCV9 ;
 unsigned int STT_ARM_TFUNC ;



 unsigned int STT_HIOS ;
 unsigned int STT_HIPROC ;
 unsigned int STT_HP_OPAQUE ;
 unsigned int STT_HP_STUB ;
 unsigned int STT_LOOS ;
 unsigned int STT_LOPROC ;


 unsigned int STT_PARISC_MILLI ;
 unsigned int STT_REGISTER ;




 char* _ (char*) ;
 TYPE_1__ elf_header ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_symbol_type (unsigned int type)
{
  static char buff[32];

  switch (type)
    {
    case 133: return "NOTYPE";
    case 132: return "OBJECT";
    case 134: return "FUNC";
    case 130: return "SECTION";
    case 135: return "FILE";
    case 136: return "COMMON";
    case 128: return "TLS";
    case 131: return "RELC";
    case 129: return "SRELC";
    default:
      if (type >= STT_LOPROC && type <= STT_HIPROC)
 {
   if (elf_header.e_machine == EM_ARM && type == STT_ARM_TFUNC)
     return "THUMB_FUNC";

   if (elf_header.e_machine == EM_SPARCV9 && type == STT_REGISTER)
     return "REGISTER";

   if (elf_header.e_machine == EM_PARISC && type == STT_PARISC_MILLI)
     return "PARISC_MILLI";

   snprintf (buff, sizeof (buff), _("<processor specific>: %d"), type);
 }
      else if (type >= STT_LOOS && type <= STT_HIOS)
 {
   if (elf_header.e_machine == EM_PARISC)
     {
       if (type == STT_HP_OPAQUE)
  return "HP_OPAQUE";
       if (type == STT_HP_STUB)
  return "HP_STUB";
     }

   snprintf (buff, sizeof (buff), _("<OS specific>: %d"), type);
 }
      else
 snprintf (buff, sizeof (buff), _("<unknown>: %d"), type);
      return buff;
    }
}
