
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum map_type { ____Placeholder_map_type } map_type ;
typedef int GElf_Shdr ;
typedef int Elf_Data ;




 int elf_sec__is_data (int *,int *) ;
 int elf_sec__is_text (int *,int *) ;

__attribute__((used)) static bool elf_sec__is_a(GElf_Shdr *shdr, Elf_Data *secstrs,
     enum map_type type)
{
 switch (type) {
 case 129:
  return elf_sec__is_text(shdr, secstrs);
 case 128:
  return elf_sec__is_data(shdr, secstrs);
 default:
  return 0;
 }
}
