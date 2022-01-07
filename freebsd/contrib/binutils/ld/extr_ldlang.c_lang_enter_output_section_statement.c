
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sectype; int block_value; int * load_base; void* section_alignment; void* subsection_alignment; int children; int flags; int * addr_tree; } ;
typedef TYPE_1__ lang_output_section_statement_type ;
typedef int etree_type ;
typedef enum section_type { ____Placeholder_section_type } section_type ;


 int SEC_NEVER_LOAD ;
 int SEC_NO_FLAGS ;
 TYPE_1__* current_section ;
 int exp_get_value_int (int *,int,char*) ;
 TYPE_1__* lang_output_section_statement_lookup_1 (char const*,int) ;
 int noload_section ;
 int * stat_ptr ;
 void* topower (int ) ;

lang_output_section_statement_type *
lang_enter_output_section_statement (const char *output_section_statement_name,
         etree_type *address_exp,
         enum section_type sectype,
         etree_type *align,
         etree_type *subalign,
         etree_type *ebase,
         int constraint)
{
  lang_output_section_statement_type *os;

   os = lang_output_section_statement_lookup_1 (output_section_statement_name,
      constraint);
   current_section = os;



  if (os->addr_tree == ((void*)0))
    {
      os->addr_tree = address_exp;
    }
  os->sectype = sectype;
  if (sectype != noload_section)
    os->flags = SEC_NO_FLAGS;
  else
    os->flags = SEC_NEVER_LOAD;
  os->block_value = 1;
  stat_ptr = &os->children;

  os->subsection_alignment =
    topower (exp_get_value_int (subalign, -1, "subsection alignment"));
  os->section_alignment =
    topower (exp_get_value_int (align, -1, "section alignment"));

  os->load_base = ebase;
  return os;
}
