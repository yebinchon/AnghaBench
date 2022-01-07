
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lang_add_output (char const*,int) ;

void
mri_name (const char *name)
{
  lang_add_output (name, 1);
}
