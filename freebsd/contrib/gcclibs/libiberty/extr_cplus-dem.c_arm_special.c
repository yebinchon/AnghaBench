
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;


 int ARM_VTABLE_STRING ;
 int ARM_VTABLE_STRLEN ;
 int consume_count (char const**) ;
 int string_append (int *,char*) ;
 int string_prepend (int *,char*) ;
 int string_prependn (int *,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,int) ;

__attribute__((used)) static int
arm_special (const char **mangled, string *declp)
{
  int n;
  int success = 1;
  const char *scan;

  if (strncmp (*mangled, ARM_VTABLE_STRING, ARM_VTABLE_STRLEN) == 0)
    {




      scan = *mangled + ARM_VTABLE_STRLEN;
      while (*scan != '\0')
        {
          n = consume_count (&scan);
          if (n == -1)
     {
       return (0);
     }
          scan += n;
          if (scan[0] == '_' && scan[1] == '_')
     {
       scan += 2;
     }
        }
      (*mangled) += ARM_VTABLE_STRLEN;
      while (**mangled != '\0')
 {
   n = consume_count (mangled);
          if (n == -1
       || n > (long) strlen (*mangled))
     return 0;
   string_prependn (declp, *mangled, n);
   (*mangled) += n;
   if ((*mangled)[0] == '_' && (*mangled)[1] == '_')
     {
       string_prepend (declp, "::");
       (*mangled) += 2;
     }
 }
      string_append (declp, " virtual table");
    }
  else
    {
      success = 0;
    }
  return (success);
}
