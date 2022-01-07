
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum map_type { ____Placeholder_map_type } map_type ;
typedef int GElf_Sym ;




 int elf_sym__is_function (int *) ;
 int elf_sym__is_object (int *) ;

__attribute__((used)) static bool elf_sym__is_a(GElf_Sym *sym, enum map_type type)
{
 switch (type) {
 case 129:
  return elf_sym__is_function(sym);
 case 128:
  return elf_sym__is_object(sym);
 default:
  return 0;
 }
}
