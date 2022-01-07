
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_machine; int * e_ident; } ;


 size_t EI_OSABI ;
 int ELFOSABI_HPUX ;
 int EM_IA_64 ;
 int EM_MIPS ;
 int EM_X86_64 ;


 unsigned int SHN_HIOS ;
 unsigned int SHN_HIPROC ;
 unsigned int SHN_HIRESERVE ;
 unsigned int SHN_IA_64_ANSI_COMMON ;
 unsigned int SHN_LOOS ;
 unsigned int SHN_LOPROC ;
 unsigned int SHN_LORESERVE ;
 unsigned int SHN_MIPS_SCOMMON ;
 unsigned int SHN_MIPS_SUNDEFINED ;

 unsigned int SHN_X86_64_LCOMMON ;
 TYPE_1__ elf_header ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static const char *
get_symbol_index_type (unsigned int type)
{
  static char buff[32];

  switch (type)
    {
    case 128: return "UND";
    case 130: return "ABS";
    case 129: return "COM";
    default:
      if (type == SHN_IA_64_ANSI_COMMON
   && elf_header.e_machine == EM_IA_64
   && elf_header.e_ident[EI_OSABI] == ELFOSABI_HPUX)
 return "ANSI_COM";
      else if (elf_header.e_machine == EM_X86_64
        && type == SHN_X86_64_LCOMMON)
 return "LARGE_COM";
      else if (type == SHN_MIPS_SCOMMON
        && elf_header.e_machine == EM_MIPS)
 return "SCOM";
      else if (type == SHN_MIPS_SUNDEFINED
        && elf_header.e_machine == EM_MIPS)
 return "SUND";
      else if (type >= SHN_LOPROC && type <= SHN_HIPROC)
 sprintf (buff, "PRC[0x%04x]", type);
      else if (type >= SHN_LOOS && type <= SHN_HIOS)
 sprintf (buff, "OS [0x%04x]", type);
      else if (type >= SHN_LORESERVE && type <= SHN_HIRESERVE)
 sprintf (buff, "RSV[0x%04x]", type);
      else
 sprintf (buff, "%3d", type);
      break;
    }

  return buff;
}
