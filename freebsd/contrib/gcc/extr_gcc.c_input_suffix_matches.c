
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ suffix; } ;


 TYPE_1__* input_file_compiler ;
 char* input_suffix ;
 int strcmp (scalar_t__,char*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static inline bool
input_suffix_matches (const char *atom, const char *end_atom)
{






  if (atom + 1 == end_atom
      && input_file_compiler
      && input_file_compiler->suffix)
    {
      if (*atom == 's')
 return !strcmp (input_file_compiler->suffix, "@assembler");
      if (*atom == 'S')
 return !strcmp (input_file_compiler->suffix, "@assembler-with-cpp");
    }

  return (input_suffix
   && !strncmp (input_suffix, atom, end_atom - atom)
   && input_suffix[end_atom - atom] == '\0');
}
