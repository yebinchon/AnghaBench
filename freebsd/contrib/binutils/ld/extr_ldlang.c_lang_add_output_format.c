
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ endian; } ;


 scalar_t__ ENDIAN_BIG ;
 scalar_t__ ENDIAN_LITTLE ;
 TYPE_1__ command_line ;
 char const* output_target ;

void
lang_add_output_format (const char *format,
   const char *big,
   const char *little,
   int from_script)
{
  if (output_target == ((void*)0) || !from_script)
    {
      if (command_line.endian == ENDIAN_BIG
   && big != ((void*)0))
 format = big;
      else if (command_line.endian == ENDIAN_LITTLE
        && little != ((void*)0))
 format = little;

      output_target = format;
    }
}
