
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_demangle_info {int dummy; } ;
typedef int debug_type ;
typedef int bfd_boolean ;


 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 int FALSE ;
 int TRUE ;
 int stab_demangle_type (struct stab_demangle_info*,char const**,int *) ;

__attribute__((used)) static bfd_boolean
stab_demangle_function_name (struct stab_demangle_info *minfo,
        const char **pp, const char *scan)
{
  const char *name;






  name = *pp;
  *pp = scan + 2;

  if (*pp - name >= 5
    && CONST_STRNEQ (name, "type")
    && (name[4] == '$' || name[4] == '.'))
    {
      const char *tem;


      tem = name + 5;
      if (! stab_demangle_type (minfo, &tem, (debug_type *) ((void*)0)))
 return FALSE;
    }
  else if (name[0] == '_'
    && name[1] == '_'
    && name[2] == 'o'
    && name[3] == 'p')
    {
      const char *tem;


      tem = name + 4;
      if (! stab_demangle_type (minfo, &tem, (debug_type *) ((void*)0)))
 return FALSE;
    }

  return TRUE;
}
