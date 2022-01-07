
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_info; size_t st_shndx; } ;
typedef TYPE_1__ GElf_Sym ;


 size_t SHN_ABS ;
 size_t SHN_COMMON ;
 size_t SHN_UNDEF ;
 int STB_LOCAL ;
 int STB_WEAK ;
 int STT_OBJECT ;
 char tolower (unsigned char) ;

__attribute__((used)) static char
get_sym_type(const GElf_Sym *sym, const char *type_table)
{
 bool is_local;

 if (sym == ((void*)0) || type_table == ((void*)0))
  return ('?');

 is_local = sym->st_info >> 4 == STB_LOCAL;

 if (sym->st_shndx == SHN_ABS)
  return (is_local ? 'a' : 'A');

 if (sym->st_shndx == SHN_COMMON)
  return ('C');

 if ((sym->st_info) >> 4 == STB_WEAK) {
  if ((sym->st_info & 0xf) == STT_OBJECT)
   return (sym->st_shndx == SHN_UNDEF ? 'v' : 'V');

  return (sym->st_shndx == SHN_UNDEF ? 'w' : 'W');
 }

 if (sym->st_shndx == SHN_UNDEF)
  return ('U');

 return (is_local == 1 && type_table[sym->st_shndx] != 'N' ?
     tolower((unsigned char) type_table[sym->st_shndx]) :
     type_table[sym->st_shndx]);
}
