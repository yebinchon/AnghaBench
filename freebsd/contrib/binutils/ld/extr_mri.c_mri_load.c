
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ base ;
 int lang_add_input_file (char const*,int ,int *) ;
 int lang_input_file_is_file_enum ;

void
mri_load (const char *name)
{
  base = 0;
  lang_add_input_file (name, lang_input_file_is_file_enum, ((void*)0));
}
