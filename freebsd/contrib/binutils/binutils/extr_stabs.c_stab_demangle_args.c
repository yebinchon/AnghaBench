
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stab_demangle_info {unsigned int typestring_count; TYPE_1__* typestrings; } ;
typedef int debug_type ;
typedef int bfd_boolean ;
struct TYPE_2__ {char* typestring; } ;


 int DEBUG_TYPE_NULL ;
 int FALSE ;
 int TRUE ;
 int stab_bad_demangle (char const*) ;
 int stab_demangle_arg (struct stab_demangle_info*,char const**,int **,unsigned int*,unsigned int*) ;
 int stab_demangle_get_count (char const**,unsigned int*) ;
 scalar_t__ xmalloc (unsigned int) ;

__attribute__((used)) static bfd_boolean
stab_demangle_args (struct stab_demangle_info *minfo, const char **pp,
      debug_type **pargs, bfd_boolean *pvarargs)
{
  const char *orig;
  unsigned int alloc, count;

  orig = *pp;

  alloc = 10;
  if (pargs != ((void*)0))
    {
      *pargs = (debug_type *) xmalloc (alloc * sizeof **pargs);
      *pvarargs = FALSE;
    }
  count = 0;

  while (**pp != '_' && **pp != '\0' && **pp != 'e')
    {
      if (**pp == 'N' || **pp == 'T')
 {
   char temptype;
   unsigned int r, t;

   temptype = **pp;
   ++*pp;

   if (temptype == 'T')
     r = 1;
   else
     {
       if (! stab_demangle_get_count (pp, &r))
  {
    stab_bad_demangle (orig);
    return FALSE;
  }
     }

   if (! stab_demangle_get_count (pp, &t))
     {
       stab_bad_demangle (orig);
       return FALSE;
     }

   if (t >= minfo->typestring_count)
     {
       stab_bad_demangle (orig);
       return FALSE;
     }
   while (r-- > 0)
     {
       const char *tem;

       tem = minfo->typestrings[t].typestring;
       if (! stab_demangle_arg (minfo, &tem, pargs, &count, &alloc))
  return FALSE;
     }
 }
      else
 {
   if (! stab_demangle_arg (minfo, pp, pargs, &count, &alloc))
     return FALSE;
 }
    }

  if (pargs != ((void*)0))
    (*pargs)[count] = DEBUG_TYPE_NULL;

  if (**pp == 'e')
    {
      if (pargs != ((void*)0))
 *pvarargs = TRUE;
      ++*pp;
    }

  return TRUE;
}
