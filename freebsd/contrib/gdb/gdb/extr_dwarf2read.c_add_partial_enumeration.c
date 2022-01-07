
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_die_info {scalar_t__ tag; int * name; } ;
struct objfile {int * obfd; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
typedef int bfd ;


 scalar_t__ DW_TAG_enumerator ;
 int add_partial_symbol (struct partial_die_info*,struct dwarf2_cu*,char const*) ;
 int complaint (int *,char*) ;
 char* read_partial_die (struct partial_die_info*,int *,char*,struct dwarf2_cu*) ;
 int symfile_complaints ;

__attribute__((used)) static char *
add_partial_enumeration (struct partial_die_info *enum_pdi, char *info_ptr,
    struct dwarf2_cu *cu, const char *namespace)
{
  struct objfile *objfile = cu->objfile;
  bfd *abfd = objfile->obfd;
  struct partial_die_info pdi;

  if (enum_pdi->name != ((void*)0))
    add_partial_symbol (enum_pdi, cu, namespace);

  while (1)
    {
      info_ptr = read_partial_die (&pdi, abfd, info_ptr, cu);
      if (pdi.tag == 0)
 break;
      if (pdi.tag != DW_TAG_enumerator || pdi.name == ((void*)0))
 complaint (&symfile_complaints, "malformed enumerator DIE ignored");
      else
 add_partial_symbol (&pdi, cu, namespace);
    }

  return info_ptr;
}
