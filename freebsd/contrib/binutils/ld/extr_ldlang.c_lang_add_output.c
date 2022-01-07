
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TRUE ;
 scalar_t__ had_output_filename ;
 char const* output_filename ;

void
lang_add_output (const char *name, int from_script)
{

  if (!had_output_filename || !from_script)
    {
      output_filename = name;
      had_output_filename = TRUE;
    }
}
