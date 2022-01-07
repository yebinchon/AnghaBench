
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_demangle_info {int varargs; int args; } ;
typedef int debug_type ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int stab_bad_demangle (char const*) ;
 int stab_demangle_args (struct stab_demangle_info*,char const**,int *,int *) ;
 int stab_demangle_class (struct stab_demangle_info*,char const**,char const**) ;
 int stab_demangle_qualified (struct stab_demangle_info*,char const**,int *) ;
 int stab_demangle_remember_type (struct stab_demangle_info*,char const*,int) ;
 int stab_demangle_template (struct stab_demangle_info*,char const**,char**) ;

__attribute__((used)) static bfd_boolean
stab_demangle_signature (struct stab_demangle_info *minfo, const char **pp)
{
  const char *orig;
  bfd_boolean expect_func, func_done;
  const char *hold;

  orig = *pp;

  expect_func = FALSE;
  func_done = FALSE;
  hold = ((void*)0);

  while (**pp != '\0')
    {
      switch (**pp)
 {
 case 'Q':
   hold = *pp;
   if (! stab_demangle_qualified (minfo, pp, (debug_type *) ((void*)0))
       || ! stab_demangle_remember_type (minfo, hold, *pp - hold))
     return FALSE;
   expect_func = TRUE;
   hold = ((void*)0);
   break;

 case 'S':

   if (hold == ((void*)0))
     hold = *pp;
   ++*pp;
   break;

 case 'C':

   if (hold == ((void*)0))
     hold = *pp;
   ++*pp;
   break;

 case '0': case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':
   if (hold == ((void*)0))
     hold = *pp;
   if (! stab_demangle_class (minfo, pp, (const char **) ((void*)0))
       || ! stab_demangle_remember_type (minfo, hold, *pp - hold))
     return FALSE;
   expect_func = TRUE;
   hold = ((void*)0);
   break;

 case 'F':


   hold = ((void*)0);
   func_done = TRUE;
   ++*pp;
   if (! stab_demangle_args (minfo, pp, &minfo->args, &minfo->varargs))
     return FALSE;
   break;

 case 't':

   if (hold == ((void*)0))
     hold = *pp;
   if (! stab_demangle_template (minfo, pp, (char **) ((void*)0))
       || ! stab_demangle_remember_type (minfo, hold, *pp - hold))
     return FALSE;
   hold = ((void*)0);
   expect_func = TRUE;
   break;

 case '_':





   stab_bad_demangle (orig);
   return FALSE;

 default:


   func_done = TRUE;
   if (! stab_demangle_args (minfo, pp, &minfo->args, &minfo->varargs))
     return FALSE;
   break;
 }

      if (expect_func)
 {
   func_done = TRUE;
   if (! stab_demangle_args (minfo, pp, &minfo->args, &minfo->varargs))
     return FALSE;
 }
    }

  if (! func_done)
    {




      if (! stab_demangle_args (minfo, pp, &minfo->args, &minfo->varargs))
 return FALSE;
    }

  return TRUE;
}
