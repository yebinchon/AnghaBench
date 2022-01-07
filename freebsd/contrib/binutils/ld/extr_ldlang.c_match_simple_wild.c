
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
match_simple_wild (const char *pattern, const char *name)
{


  if (pattern[0] != name[0] || pattern[1] != name[1]
      || pattern[2] != name[2] || pattern[3] != name[3])
    return FALSE;

  pattern += 4;
  name += 4;
  while (*pattern != '*')
    if (*name++ != *pattern++)
      return FALSE;

  return TRUE;
}
