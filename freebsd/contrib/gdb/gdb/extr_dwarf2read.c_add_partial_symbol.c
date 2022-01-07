
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symbol {int dummy; } ;
struct partial_die_info {char* name; int tag; int has_children; int * locdesc; int has_type; int is_external; scalar_t__ lowpc; } ;
struct objfile {int static_psymbols; int global_psymbols; int section_offsets; } ;
struct dwarf2_cu {scalar_t__ language; struct objfile* objfile; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ANOFFSET (int ,int ) ;
 int LOC_BLOCK ;
 int LOC_CONST ;
 int LOC_STATIC ;
 int LOC_TYPEDEF ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int STRUCT_DOMAIN ;
 int * SYMBOL_CPLUS_DEMANGLED_NAME (struct partial_symbol const*) ;
 int VAR_DOMAIN ;
 struct partial_symbol* add_psymbol_to_list (char*,scalar_t__,int ,int ,int *,int ,scalar_t__,scalar_t__,struct objfile*) ;
 char* alloca (scalar_t__) ;
 int cp_check_possible_namespace_symbols (int *,struct objfile*) ;
 scalar_t__ decode_locdesc (int *,struct dwarf2_cu*) ;
 scalar_t__ language_cplus ;
 scalar_t__ pdi_needs_namespace (int,char const*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
add_partial_symbol (struct partial_die_info *pdi,
      struct dwarf2_cu *cu, const char *namespace)
{
  struct objfile *objfile = cu->objfile;
  CORE_ADDR addr = 0;
  char *actual_name = pdi->name;
  const struct partial_symbol *psym = ((void*)0);
  CORE_ADDR baseaddr;

  baseaddr = ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));




  if (pdi_needs_namespace (pdi->tag, namespace))
    {
      actual_name = alloca (strlen (pdi->name) + 2 + strlen (namespace) + 1);
      strcpy (actual_name, namespace);
      strcat (actual_name, "::");
      strcat (actual_name, pdi->name);
    }

  switch (pdi->tag)
    {
    case 132:
      if (pdi->is_external)
 {


   psym = add_psymbol_to_list (actual_name, strlen (actual_name),
          VAR_DOMAIN, LOC_BLOCK,
          &objfile->global_psymbols,
          0, pdi->lowpc + baseaddr,
          cu->language, objfile);
 }
      else
 {


   psym = add_psymbol_to_list (actual_name, strlen (actual_name),
          VAR_DOMAIN, LOC_BLOCK,
          &objfile->static_psymbols,
          0, pdi->lowpc + baseaddr,
          cu->language, objfile);
 }
      break;
    case 128:
      if (pdi->is_external)
 {
   if (pdi->locdesc)
     addr = decode_locdesc (pdi->locdesc, cu);
   if (pdi->locdesc || pdi->has_type)
     psym = add_psymbol_to_list (actual_name, strlen (actual_name),
     VAR_DOMAIN, LOC_STATIC,
     &objfile->global_psymbols,
     0, addr + baseaddr,
     cu->language, objfile);
 }
      else
 {

   if (pdi->locdesc == ((void*)0))
     return;
   addr = decode_locdesc (pdi->locdesc, cu);


   psym = add_psymbol_to_list (actual_name, strlen (actual_name),
          VAR_DOMAIN, LOC_STATIC,
          &objfile->static_psymbols,
          0, addr + baseaddr,
          cu->language, objfile);
 }
      break;
    case 130:
    case 137:
    case 131:
      add_psymbol_to_list (actual_name, strlen (actual_name),
      VAR_DOMAIN, LOC_TYPEDEF,
      &objfile->static_psymbols,
      0, (CORE_ADDR) 0, cu->language, objfile);
      break;
    case 136:
    case 133:
    case 129:
    case 135:




      if (pdi->has_children == 0)
 return;
      add_psymbol_to_list (actual_name, strlen (actual_name),
      STRUCT_DOMAIN, LOC_TYPEDEF,
      cu->language == language_cplus
      ? &objfile->global_psymbols
      : &objfile->static_psymbols,
      0, (CORE_ADDR) 0, cu->language, objfile);

      if (cu->language == language_cplus)
 {

   add_psymbol_to_list (actual_name, strlen (actual_name),
          VAR_DOMAIN, LOC_TYPEDEF,
          &objfile->global_psymbols,
          0, (CORE_ADDR) 0, cu->language, objfile);
 }
      break;
    case 134:
      add_psymbol_to_list (actual_name, strlen (actual_name),
      VAR_DOMAIN, LOC_CONST,
      cu->language == language_cplus
      ? &objfile->global_psymbols
      : &objfile->static_psymbols,
      0, (CORE_ADDR) 0, cu->language, objfile);
      break;
    default:
      break;
    }







  if (cu->language == language_cplus
      && namespace == ((void*)0)
      && psym != ((void*)0)
      && SYMBOL_CPLUS_DEMANGLED_NAME (psym) != ((void*)0))
    cp_check_possible_namespace_symbols (SYMBOL_CPLUS_DEMANGLED_NAME (psym),
      objfile);
}
