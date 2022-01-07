
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_die_info {int tag; int is_declaration; int highpc; int lowpc; int has_pc_info; int * name; } ;
struct objfile {int * obfd; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
typedef int bfd ;
typedef int CORE_ADDR ;
 char* add_partial_enumeration (struct partial_die_info*,char*,struct dwarf2_cu*,char const*) ;
 char* add_partial_namespace (struct partial_die_info*,char*,int *,int *,struct dwarf2_cu*,char const*) ;
 char* add_partial_structure (struct partial_die_info*,char*,struct dwarf2_cu*,char const*) ;
 int add_partial_symbol (struct partial_die_info*,struct dwarf2_cu*,char const*) ;
 char* locate_pdi_sibling (struct partial_die_info*,char*,int *,struct dwarf2_cu*) ;
 char* read_partial_die (struct partial_die_info*,int *,char*,struct dwarf2_cu*) ;

__attribute__((used)) static char *
scan_partial_symbols (char *info_ptr, CORE_ADDR *lowpc,
        CORE_ADDR *highpc, struct dwarf2_cu *cu,
        const char *namespace)
{
  struct objfile *objfile = cu->objfile;
  bfd *abfd = objfile->obfd;
  struct partial_die_info pdi;





  while (1)
    {


      int info_ptr_updated = 0;

      info_ptr = read_partial_die (&pdi, abfd, info_ptr, cu);





      if (pdi.name != ((void*)0) || pdi.tag == 134
   || pdi.tag == 135)
 {
   switch (pdi.tag)
     {
     case 132:
       if (pdi.has_pc_info)
  {
    if (pdi.lowpc < *lowpc)
      {
        *lowpc = pdi.lowpc;
      }
    if (pdi.highpc > *highpc)
      {
        *highpc = pdi.highpc;
      }
    if (!pdi.is_declaration)
      {
        add_partial_symbol (&pdi, cu, namespace);
      }
  }
       break;
     case 128:
     case 130:
     case 129:
       if (!pdi.is_declaration)
  {
    add_partial_symbol (&pdi, cu, namespace);
  }
       break;
     case 136:
     case 133:
       if (!pdi.is_declaration)
  {
    info_ptr = add_partial_structure (&pdi, info_ptr, cu,
          namespace);
    info_ptr_updated = 1;
  }
       break;
     case 135:
       if (!pdi.is_declaration)
  {
    info_ptr = add_partial_enumeration (&pdi, info_ptr, cu,
            namespace);
    info_ptr_updated = 1;
  }
       break;
     case 137:
            case 131:


       add_partial_symbol (&pdi, cu, namespace);
       break;
     case 134:



       if (namespace == ((void*)0))
  namespace = "";
       info_ptr = add_partial_namespace (&pdi, info_ptr, lowpc, highpc,
      cu, namespace);
       info_ptr_updated = 1;
       break;
     default:
       break;
     }
 }

      if (pdi.tag == 0)
 break;
      if (!info_ptr_updated)
 info_ptr = locate_pdi_sibling (&pdi, info_ptr, abfd, cu);
    }

  return info_ptr;
}
