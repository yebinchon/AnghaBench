
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_demangle_info {int info; int dhandle; } ;
typedef scalar_t__ debug_type ;
typedef scalar_t__ debug_field ;
typedef int bfd_boolean ;


 scalar_t__ const DEBUG_FIELD_NULL ;
 int DEBUG_KIND_CLASS ;
 int DEBUG_KIND_ILLEGAL ;
 scalar_t__ DEBUG_TYPE_NULL ;
 int FALSE ;
 int ISDIGIT (char const) ;
 int TRUE ;
 unsigned int atoi (char const*) ;
 scalar_t__ debug_find_named_type (int ,char*) ;
 scalar_t__ debug_get_field_type (int ,scalar_t__ const) ;
 scalar_t__* debug_get_fields (int ,scalar_t__) ;
 char* debug_get_type_name (int ,scalar_t__) ;
 int free (char*) ;
 char* savestring (char const*,unsigned int) ;
 int stab_bad_demangle (char const*) ;
 unsigned int stab_demangle_count (char const**) ;
 int stab_demangle_template (struct stab_demangle_info*,char const**,char**) ;
 scalar_t__ stab_find_tagged_type (int ,int ,char const*,unsigned int,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static bfd_boolean
stab_demangle_qualified (struct stab_demangle_info *minfo, const char **pp,
    debug_type *ptype)
{
  const char *orig;
  const char *p;
  unsigned int qualifiers;
  debug_type context;

  orig = *pp;

  switch ((*pp)[1])
    {
    case '_':



      p = *pp + 2;
      if (! ISDIGIT (*p) || *p == '0')
 {
   stab_bad_demangle (orig);
   return FALSE;
 }
      qualifiers = atoi (p);
      while (ISDIGIT (*p))
 ++p;
      if (*p != '_')
 {
   stab_bad_demangle (orig);
   return FALSE;
 }
      *pp = p + 1;
      break;

    case '1': case '2': case '3': case '4': case '5':
    case '6': case '7': case '8': case '9':
      qualifiers = (*pp)[1] - '0';

      if ((*pp)[2] == '_')
 ++*pp;
      *pp += 2;
      break;

    case '0':
    default:
      stab_bad_demangle (orig);
      return FALSE;
    }

  context = DEBUG_TYPE_NULL;


  while (qualifiers-- > 0)
    {
      if (**pp == '_')
 ++*pp;
      if (**pp == 't')
 {
   char *name;

   if (! stab_demangle_template (minfo, pp,
     ptype != ((void*)0) ? &name : ((void*)0)))
     return FALSE;

   if (ptype != ((void*)0))
     {
       context = stab_find_tagged_type (minfo->dhandle, minfo->info,
            name, strlen (name),
            DEBUG_KIND_CLASS);
       free (name);
       if (context == DEBUG_TYPE_NULL)
  return FALSE;
     }
 }
      else
 {
   unsigned int len;

   len = stab_demangle_count (pp);
   if (strlen (*pp) < len)
     {
       stab_bad_demangle (orig);
       return FALSE;
     }

   if (ptype != ((void*)0))
     {
       const debug_field *fields;

       fields = ((void*)0);
       if (context != DEBUG_TYPE_NULL)
  fields = debug_get_fields (minfo->dhandle, context);

       context = DEBUG_TYPE_NULL;

       if (fields != ((void*)0))
  {
    char *name;
    name = savestring (*pp, len);

    for (; *fields != DEBUG_FIELD_NULL; fields++)
      {
        debug_type ft;
        const char *dn;

        ft = debug_get_field_type (minfo->dhandle, *fields);
        if (ft == ((void*)0))
   return FALSE;
        dn = debug_get_type_name (minfo->dhandle, ft);
        if (dn != ((void*)0) && strcmp (dn, name) == 0)
   {
     context = ft;
     break;
   }
      }

    free (name);
  }

       if (context == DEBUG_TYPE_NULL)
  {




    if (qualifiers == 0)
      {
        char *name;

        name = savestring (*pp, len);
        context = debug_find_named_type (minfo->dhandle,
             name);
        free (name);
      }

    if (context == DEBUG_TYPE_NULL)
      {
        context = stab_find_tagged_type (minfo->dhandle,
             minfo->info,
             *pp, len,
             (qualifiers == 0
       ? DEBUG_KIND_ILLEGAL
       : DEBUG_KIND_CLASS));
        if (context == DEBUG_TYPE_NULL)
   return FALSE;
      }
  }
     }

   *pp += len;
 }
    }

  if (ptype != ((void*)0))
    *ptype = context;

  return TRUE;
}
