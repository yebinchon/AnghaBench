
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lang_input_statement_type ;
typedef int lang_input_file_enum_type ;


 int TRUE ;
 int * new_afile (char const*,int ,char const*,int ) ;

lang_input_statement_type *
lang_add_input_file (const char *name,
       lang_input_file_enum_type file_type,
       const char *target)
{
  return new_afile (name, file_type, target, TRUE);
}
