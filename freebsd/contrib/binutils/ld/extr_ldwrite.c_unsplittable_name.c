
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (char const*,char*) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static bfd_boolean
unsplittable_name (const char *name)
{
  if (CONST_STRNEQ (name, ".stab"))
    {


      unsigned len = strlen (name);
      if (strcmp (&name[len-3], "str") == 0)
 return TRUE;
    }
  else if (strcmp (name, "$GDB_STRINGS$") == 0)
    return TRUE;
  return FALSE;
}
