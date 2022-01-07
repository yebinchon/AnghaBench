
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int bad_stab (char const*) ;
 scalar_t__ parse_number (char const**,int *) ;

__attribute__((used)) static bfd_boolean
parse_stab_type_number (const char **pp, int *typenums)
{
  const char *orig;

  orig = *pp;

  if (**pp != '(')
    {
      typenums[0] = 0;
      typenums[1] = (int) parse_number (pp, (bfd_boolean *) ((void*)0));
    }
  else
    {
      ++*pp;
      typenums[0] = (int) parse_number (pp, (bfd_boolean *) ((void*)0));
      if (**pp != ',')
 {
   bad_stab (orig);
   return FALSE;
 }
      ++*pp;
      typenums[1] = (int) parse_number (pp, (bfd_boolean *) ((void*)0));
      if (**pp != ')')
 {
   bad_stab (orig);
   return FALSE;
 }
      ++*pp;
    }

  return TRUE;
}
