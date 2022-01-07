
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_demangle_info {int dummy; } ;
typedef int debug_type ;
typedef int bfd_boolean ;


 int DEBUG_TYPE_NULL ;
 int FALSE ;
 int TRUE ;
 int stab_demangle_remember_type (struct stab_demangle_info*,char const*,int) ;
 int stab_demangle_type (struct stab_demangle_info*,char const**,int *) ;
 scalar_t__ xrealloc (int *,unsigned int) ;

__attribute__((used)) static bfd_boolean
stab_demangle_arg (struct stab_demangle_info *minfo, const char **pp,
     debug_type **pargs, unsigned int *pcount,
     unsigned int *palloc)
{
  const char *start;
  debug_type type;

  start = *pp;
  if (! stab_demangle_type (minfo, pp,
       pargs == ((void*)0) ? (debug_type *) ((void*)0) : &type)
      || ! stab_demangle_remember_type (minfo, start, *pp - start))
    return FALSE;

  if (pargs != ((void*)0))
    {
      if (type == DEBUG_TYPE_NULL)
 return FALSE;

      if (*pcount + 1 >= *palloc)
 {
   *palloc += 10;
   *pargs = ((debug_type *)
      xrealloc (*pargs, *palloc * sizeof **pargs));
 }
      (*pargs)[*pcount] = type;
      ++*pcount;
    }

  return TRUE;
}
