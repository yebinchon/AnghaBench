
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flag_char; scalar_t__ predicate; } ;
typedef TYPE_1__ format_flag_spec ;


 int gcc_assert (char const*) ;
 scalar_t__ strchr (char const*,scalar_t__) ;

__attribute__((used)) static const format_flag_spec *
get_flag_spec (const format_flag_spec *spec, int flag, const char *predicates)
{
  int i;
  for (i = 0; spec[i].flag_char != 0; i++)
    {
      if (spec[i].flag_char != flag)
 continue;
      if (predicates != ((void*)0))
 {
   if (spec[i].predicate != 0
       && strchr (predicates, spec[i].predicate) != 0)
     return &spec[i];
 }
      else if (spec[i].predicate == 0)
 return &spec[i];
    }
  gcc_assert (predicates);
  return ((void*)0);
}
