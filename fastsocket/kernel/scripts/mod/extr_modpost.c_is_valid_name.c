
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elf_info {char* strtab; } ;
struct TYPE_3__ {int st_name; } ;
typedef TYPE_1__ Elf_Sym ;


 int is_arm_mapping_symbol (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int is_valid_name(struct elf_info *elf, Elf_Sym *sym)
{
 const char *name = elf->strtab + sym->st_name;

 if (!name || !strlen(name))
  return 0;
 return !is_arm_mapping_symbol(name);
}
