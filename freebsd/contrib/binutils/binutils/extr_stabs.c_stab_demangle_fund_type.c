
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_demangle_info {int dhandle; int info; } ;
typedef int debug_type ;
typedef scalar_t__ bfd_boolean ;


 int DEBUG_KIND_CLASS ;
 int DEBUG_KIND_ILLEGAL ;
 int DEBUG_TYPE_NULL ;
 scalar_t__ FALSE ;
 int ISDIGIT (char const) ;
 scalar_t__ TRUE ;
 int debug_find_named_type (int ,char*) ;
 int debug_make_bool_type (int ,int) ;
 int debug_make_const_type (int ,int ) ;
 int debug_make_float_type (int ,int) ;
 int debug_make_int_type (int ,int,scalar_t__) ;
 int debug_make_void_type (int ) ;
 int debug_make_volatile_type (int ,int ) ;
 int free (char*) ;
 char* savestring (char const*,int) ;
 int stab_bad_demangle (char const*) ;
 int stab_demangle_class (struct stab_demangle_info*,char const**,char const**) ;
 int stab_demangle_template (struct stab_demangle_info*,char const**,char**) ;
 int stab_find_tagged_type (int ,int ,char const*,int,int ) ;
 int strlen (char*) ;

__attribute__((used)) static bfd_boolean
stab_demangle_fund_type (struct stab_demangle_info *minfo, const char **pp,
    debug_type *ptype)
{
  const char *orig;
  bfd_boolean constp, volatilep, unsignedp, signedp;
  bfd_boolean done;

  orig = *pp;

  constp = FALSE;
  volatilep = FALSE;
  unsignedp = FALSE;
  signedp = FALSE;

  done = FALSE;
  while (! done)
    {
      switch (**pp)
 {
 case 'C':
   constp = TRUE;
   ++*pp;
   break;

 case 'U':
   unsignedp = TRUE;
   ++*pp;
   break;

 case 'S':
   signedp = TRUE;
   ++*pp;
   break;

 case 'V':
   volatilep = TRUE;
   ++*pp;
   break;

 default:
   done = TRUE;
   break;
 }
    }

  switch (**pp)
    {
    case '\0':
    case '_':

      stab_bad_demangle (orig);
      break;

    case 'v':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle, "void");
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_void_type (minfo->dhandle);
 }
      ++*pp;
      break;

    case 'x':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle,
       (unsignedp
        ? "long long unsigned int"
        : "long long int"));
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_int_type (minfo->dhandle, 8, unsignedp);
 }
      ++*pp;
      break;

    case 'l':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle,
       (unsignedp
        ? "long unsigned int"
        : "long int"));
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_int_type (minfo->dhandle, 4, unsignedp);
 }
      ++*pp;
      break;

    case 'i':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle,
       (unsignedp
        ? "unsigned int"
        : "int"));
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_int_type (minfo->dhandle, 4, unsignedp);
 }
      ++*pp;
      break;

    case 's':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle,
       (unsignedp
        ? "short unsigned int"
        : "short int"));
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_int_type (minfo->dhandle, 2, unsignedp);
 }
      ++*pp;
      break;

    case 'b':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle, "bool");
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_bool_type (minfo->dhandle, 4);
 }
      ++*pp;
      break;

    case 'c':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle,
       (unsignedp
        ? "unsigned char"
        : (signedp
           ? "signed char"
           : "char")));
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_int_type (minfo->dhandle, 1, unsignedp);
 }
      ++*pp;
      break;

    case 'w':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle, "__wchar_t");
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_int_type (minfo->dhandle, 2, TRUE);
 }
      ++*pp;
      break;

    case 'r':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle, "long double");
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_float_type (minfo->dhandle, 8);
 }
      ++*pp;
      break;

    case 'd':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle, "double");
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_float_type (minfo->dhandle, 8);
 }
      ++*pp;
      break;

    case 'f':
      if (ptype != ((void*)0))
 {
   *ptype = debug_find_named_type (minfo->dhandle, "float");
   if (*ptype == DEBUG_TYPE_NULL)
     *ptype = debug_make_float_type (minfo->dhandle, 4);
 }
      ++*pp;
      break;

    case 'G':
      ++*pp;
      if (! ISDIGIT (**pp))
 {
   stab_bad_demangle (orig);
   return FALSE;
 }

    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9':
      {
 const char *hold;

 if (! stab_demangle_class (minfo, pp, &hold))
   return FALSE;
 if (ptype != ((void*)0))
   {
     char *name;

     name = savestring (hold, *pp - hold);
     *ptype = debug_find_named_type (minfo->dhandle, name);
     free (name);
     if (*ptype == DEBUG_TYPE_NULL)
       {


  *ptype = stab_find_tagged_type (minfo->dhandle, minfo->info,
      hold, *pp - hold,
      DEBUG_KIND_ILLEGAL);
  if (*ptype == DEBUG_TYPE_NULL)
    return FALSE;
       }
   }
      }
      break;

    case 't':
      {
 char *name;

 if (! stab_demangle_template (minfo, pp,
          ptype != ((void*)0) ? &name : ((void*)0)))
   return FALSE;
 if (ptype != ((void*)0))
   {
     *ptype = stab_find_tagged_type (minfo->dhandle, minfo->info,
         name, strlen (name),
         DEBUG_KIND_CLASS);
     free (name);
     if (*ptype == DEBUG_TYPE_NULL)
       return FALSE;
   }
      }
      break;

    default:
      stab_bad_demangle (orig);
      return FALSE;
    }

  if (ptype != ((void*)0))
    {
      if (constp)
 *ptype = debug_make_const_type (minfo->dhandle, *ptype);
      if (volatilep)
 *ptype = debug_make_volatile_type (minfo->dhandle, *ptype);
    }

  return TRUE;
}
