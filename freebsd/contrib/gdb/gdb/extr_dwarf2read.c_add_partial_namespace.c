
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_die_info {char* name; scalar_t__ has_children; } ;
struct objfile {int global_psymbols; } ;
struct dwarf2_cu {int language; struct objfile* objfile; } ;
typedef int CORE_ADDR ;


 int LOC_TYPEDEF ;
 int VAR_DOMAIN ;
 int add_psymbol_to_list (char*,scalar_t__,int ,int ,int *,int ,int ,int ,struct objfile*) ;
 char* alloca (scalar_t__) ;
 char* scan_partial_symbols (char*,int *,int *,struct dwarf2_cu*,char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
add_partial_namespace (struct partial_die_info *pdi, char *info_ptr,
         CORE_ADDR *lowpc, CORE_ADDR *highpc,
         struct dwarf2_cu *cu, const char *namespace)
{
  struct objfile *objfile = cu->objfile;
  const char *new_name = pdi->name;
  char *full_name;



  if (new_name == ((void*)0))
    new_name = "(anonymous namespace)";
  full_name = alloca (strlen (namespace) + 2 + strlen (new_name) + 1);
  strcpy (full_name, namespace);
  if (*namespace != '\0')
    strcat (full_name, "::");
  strcat (full_name, new_name);






  add_psymbol_to_list (full_name, strlen (full_name),
         VAR_DOMAIN, LOC_TYPEDEF,
         &objfile->global_psymbols,
         0, 0, cu->language, objfile);



  if (pdi->has_children)
    info_ptr = scan_partial_symbols (info_ptr, lowpc, highpc, cu, full_name);

  return info_ptr;
}
