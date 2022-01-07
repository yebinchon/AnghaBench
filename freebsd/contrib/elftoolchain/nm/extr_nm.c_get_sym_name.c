
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_shndx; int st_name; int st_info; } ;
typedef TYPE_1__ GElf_Sym ;
typedef int Elf ;


 scalar_t__ GELF_ST_TYPE (int ) ;
 scalar_t__ STT_SECTION ;
 char* elf_strptr (int *,size_t,int ) ;

__attribute__((used)) static const char *
get_sym_name(Elf *elf, const GElf_Sym *sym, size_t ndx, const char **sec_table,
    int sec_table_size)
{
 const char *sym_name;

 sym_name = ((void*)0);


 if (GELF_ST_TYPE(sym->st_info) == STT_SECTION) {
  if (sec_table != ((void*)0) && sym->st_shndx < sec_table_size)
   sym_name = sec_table[sym->st_shndx];
 } else
  sym_name = elf_strptr(elf, ndx, sym->st_name);

 if (sym_name == ((void*)0))
  sym_name = "(null)";

 return (sym_name);
}
