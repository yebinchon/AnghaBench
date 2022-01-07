
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lang_output_section_statement_type ;


 int * lang_output_section_statement_lookup_1 (char const* const,int ) ;

lang_output_section_statement_type *
lang_output_section_statement_lookup (const char *const name)
{
  return lang_output_section_statement_lookup_1 (name, 0);
}
