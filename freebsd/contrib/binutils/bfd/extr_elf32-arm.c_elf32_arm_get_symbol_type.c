
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_info; } ;
typedef TYPE_1__ Elf_Internal_Sym ;


 int ELF_ST_TYPE (int ) ;


 int STT_OBJECT ;
 int STT_TLS ;

__attribute__((used)) static int
elf32_arm_get_symbol_type (Elf_Internal_Sym * elf_sym, int type)
{
  switch (ELF_ST_TYPE (elf_sym->st_info))
    {
    case 128:
      return ELF_ST_TYPE (elf_sym->st_info);

    case 129:




      if (type != STT_OBJECT && type != STT_TLS)
 return ELF_ST_TYPE (elf_sym->st_info);
      break;

    default:
      break;
    }

  return type;
}
