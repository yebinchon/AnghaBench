
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uchar_t ;
struct TYPE_3__ {scalar_t__ st_shndx; scalar_t__ st_name; scalar_t__ st_value; int st_info; } ;
typedef TYPE_1__ GElf_Sym ;


 scalar_t__ GELF_ST_TYPE (int ) ;
 scalar_t__ SHN_ABS ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ STT_OBJECT ;
 scalar_t__ strcmp (char const*,char*) ;

int
ignore_symbol(GElf_Sym *sym, const char *name)
{
 uchar_t type = GELF_ST_TYPE(sym->st_info);





 if (sym->st_shndx == SHN_UNDEF || sym->st_name == 0)
  return (1);





 if (strcmp(name, "_START_") == 0 || strcmp(name, "_END_") == 0)
  return (1);






 if (type == STT_OBJECT && sym->st_shndx == SHN_ABS &&
     sym->st_value == 0)
  return (1);
 return (0);
}
