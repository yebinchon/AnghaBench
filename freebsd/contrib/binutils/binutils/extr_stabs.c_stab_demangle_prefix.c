
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_demangle_info {int dummy; } ;
typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ ISDIGIT (char const) ;
 int TRUE ;
 int stab_bad_demangle (char const*) ;
 int stab_demangle_function_name (struct stab_demangle_info*,char const**,char const*) ;
 char* strchr (char const*,char) ;
 unsigned int strspn (char const*,char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static bfd_boolean
stab_demangle_prefix (struct stab_demangle_info *minfo, const char **pp,
        unsigned int physname_len)
{
  const char *scan;
  unsigned int i;




  if (physname_len)
    scan = *pp + physname_len;
  else
    {

      scan = *pp;
      do
 scan = strchr (scan, '_');
      while (scan != ((void*)0) && *++scan != '_');

      if (scan == ((void*)0))
 {
   stab_bad_demangle (*pp);
   return FALSE;
 }

      --scan;


      i = strspn (scan, "_");
      if (i > 2)
 scan += i - 2;
    }

  if (scan == *pp
      && (ISDIGIT (scan[2])
   || scan[2] == 'Q'
   || scan[2] == 't'))
    {

      *pp = scan + 2;
      return TRUE;
    }
  else if (scan == *pp
    && ! ISDIGIT (scan[2])
    && scan[2] != 't')
    {


      while (*scan == '_')
 ++scan;
      scan = strstr (scan, "__");
      if (scan == ((void*)0) || scan[2] == '\0')
 {
   stab_bad_demangle (*pp);
   return FALSE;
 }

      return stab_demangle_function_name (minfo, pp, scan);
    }
  else if (scan[2] != '\0')
    {

      return stab_demangle_function_name (minfo, pp, scan);
    }
  else
    {
      stab_bad_demangle (*pp);
      return FALSE;
    }

}
