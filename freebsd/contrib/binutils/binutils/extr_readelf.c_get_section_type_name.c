
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buff ;
struct TYPE_2__ {int e_machine; } ;
 unsigned int SHT_HIOS ;
 unsigned int SHT_HIPROC ;
 unsigned int SHT_HIUSER ;

 unsigned int SHT_LOOS ;
 unsigned int SHT_LOPROC ;
 unsigned int SHT_LOUSER ;
 char* _ (char*) ;
 TYPE_1__ elf_header ;
 char* get_arm_section_type_name (unsigned int) ;
 char* get_ia64_section_type_name (unsigned int) ;
 char* get_mips_section_type_name (unsigned int) ;
 char* get_parisc_section_type_name (unsigned int) ;
 char* get_x86_64_section_type_name (unsigned int) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static const char *
get_section_type_name (unsigned int sh_type)
{
  static char buff[32];

  switch (sh_type)
    {
    case 136: return "NULL";
    case 134: return "PROGBITS";
    case 129: return "SYMTAB";
    case 130: return "STRTAB";
    case 132: return "RELA";
    case 140: return "HASH";
    case 149: return "DYNAMIC";
    case 137: return "NOTE";
    case 138: return "NOBITS";
    case 133: return "REL";
    case 131: return "SHLIB";
    case 148: return "DYNSYM";
    case 139: return "INIT_ARRAY";
    case 147: return "FINI_ARRAY";
    case 135: return "PREINIT_ARRAY";
    case 146: return "GNU_HASH";
    case 141: return "GROUP";
    case 128: return "SYMTAB SECTION INDICIES";
    case 144: return "VERDEF";
    case 143: return "VERNEED";
    case 142: return "VERSYM";
    case 0x6ffffff0: return "VERSYM";
    case 0x6ffffffc: return "VERDEF";
    case 0x7ffffffd: return "AUXILIARY";
    case 0x7fffffff: return "FILTER";
    case 145: return "GNU_LIBLIST";

    default:
      if ((sh_type >= SHT_LOPROC) && (sh_type <= SHT_HIPROC))
 {
   const char *result;

   switch (elf_header.e_machine)
     {
     case 153:
     case 152:
       result = get_mips_section_type_name (sh_type);
       break;
     case 151:
       result = get_parisc_section_type_name (sh_type);
       break;
     case 154:
       result = get_ia64_section_type_name (sh_type);
       break;
     case 150:
       result = get_x86_64_section_type_name (sh_type);
       break;
     case 155:
       result = get_arm_section_type_name (sh_type);
       break;
     default:
       result = ((void*)0);
       break;
     }

   if (result != ((void*)0))
     return result;

   sprintf (buff, "LOPROC+%x", sh_type - SHT_LOPROC);
 }
      else if ((sh_type >= SHT_LOOS) && (sh_type <= SHT_HIOS))
 sprintf (buff, "LOOS+%x", sh_type - SHT_LOOS);
      else if ((sh_type >= SHT_LOUSER) && (sh_type <= SHT_HIUSER))
 sprintf (buff, "LOUSER+%x", sh_type - SHT_LOUSER);
      else
 snprintf (buff, sizeof (buff), _("<unknown>: %x"), sh_type);

      return buff;
    }
}
