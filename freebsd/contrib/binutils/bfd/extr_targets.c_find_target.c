
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct targmatch {TYPE_1__ const* vector; int * triplet; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ bfd_target ;


 int bfd_error_invalid_target ;
 int bfd_set_error (int ) ;
 struct targmatch* bfd_target_match ;
 TYPE_1__** bfd_target_vector ;
 scalar_t__ fnmatch (int *,char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const bfd_target *
find_target (const char *name)
{
  const bfd_target * const *target;
  const struct targmatch *match;

  for (target = &bfd_target_vector[0]; *target != ((void*)0); target++)
    if (strcmp (name, (*target)->name) == 0)
      return *target;




  for (match = &bfd_target_match[0]; match->triplet != ((void*)0); match++)
    {
      if (fnmatch (match->triplet, name, 0) == 0)
 {
   while (match->vector == ((void*)0))
     ++match;
   return match->vector;
 }
    }

  bfd_set_error (bfd_error_invalid_target);
  return ((void*)0);
}
