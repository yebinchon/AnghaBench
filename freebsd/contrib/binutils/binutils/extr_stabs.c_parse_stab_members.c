
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef scalar_t__ debug_type ;
typedef scalar_t__ debug_method_variant ;
typedef scalar_t__ debug_method ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 scalar_t__ DEBUG_KIND_METHOD ;
 scalar_t__ DEBUG_METHOD_NULL ;
 scalar_t__ DEBUG_METHOD_VARIANT_NULL ;
 scalar_t__ DEBUG_TYPE_NULL ;
 int DEBUG_VISIBILITY_PRIVATE ;
 int DEBUG_VISIBILITY_PROTECTED ;
 int DEBUG_VISIBILITY_PUBLIC ;
 int FALSE ;
 int TRUE ;
 char* _ (char*) ;
 int bad_stab (char const*) ;
 int * debug_get_parameter_types (void*,scalar_t__,int *) ;
 scalar_t__ debug_get_return_type (void*,scalar_t__) ;
 scalar_t__ debug_get_type_kind (void*,scalar_t__) ;
 scalar_t__ debug_make_method (void*,char*,scalar_t__*) ;
 scalar_t__ debug_make_method_variant (void*,char const*,scalar_t__,int,int ,int ,int,scalar_t__) ;
 scalar_t__ debug_make_static_method_variant (void*,char const*,scalar_t__,int,int ,int ) ;
 int parse_number (char const**,int *) ;
 scalar_t__ parse_stab_argtypes (void*,struct stab_handle*,scalar_t__,char*,char const*,scalar_t__,char*,int ,int ,char const**) ;
 scalar_t__ parse_stab_type (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ;
 char* savestring (char const*,int) ;
 scalar_t__ stab_find_type (void*,struct stab_handle*,int const*) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 int warn_stab (char const*,char*) ;
 scalar_t__ xmalloc (unsigned int) ;
 scalar_t__ xrealloc (scalar_t__*,unsigned int) ;

__attribute__((used)) static bfd_boolean
parse_stab_members (void *dhandle, struct stab_handle *info,
      const char *tagname, const char **pp,
      const int *typenums, debug_method **retp)
{
  const char *orig;
  debug_method *methods;
  unsigned int c;
  unsigned int alloc;

  *retp = ((void*)0);

  orig = *pp;

  alloc = 0;
  methods = ((void*)0);
  c = 0;

  while (**pp != ';')
    {
      const char *p;
      char *name;
      debug_method_variant *variants;
      unsigned int cvars;
      unsigned int allocvars;
      debug_type look_ahead_type;

      p = strchr (*pp, ':');
      if (p == ((void*)0) || p[1] != ':')
 break;


      if ((*pp)[0] != 'o' || (*pp)[1] != 'p' || (*pp)[2] != '$')
 {
   name = savestring (*pp, p - *pp);
   *pp = p + 2;
 }
      else
 {






   *pp = p + 2;
   for (p = *pp; *p != '.' && *p != '\0'; p++)
     ;
   if (*p != '.')
     {
       bad_stab (orig);
       return FALSE;
     }
   name = savestring (*pp, p - *pp);
   *pp = p + 1;
 }

      allocvars = 10;
      variants = ((debug_method_variant *)
    xmalloc (allocvars * sizeof *variants));
      cvars = 0;

      look_ahead_type = DEBUG_TYPE_NULL;

      do
 {
   debug_type type;
   bfd_boolean stub;
   char *argtypes;
   enum debug_visibility visibility;
   bfd_boolean constp, volatilep, staticp;
   bfd_vma voffset;
   debug_type context;
   const char *physname;
   bfd_boolean varargs;

   if (look_ahead_type != DEBUG_TYPE_NULL)
     {

       type = look_ahead_type;
       look_ahead_type = DEBUG_TYPE_NULL;
     }
   else
     {
       type = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
          (debug_type **) ((void*)0));
       if (type == DEBUG_TYPE_NULL)
  return FALSE;
       if (**pp != ':')
  {
    bad_stab (orig);
    return FALSE;
  }
     }

   ++*pp;
   p = strchr (*pp, ';');
   if (p == ((void*)0))
     {
       bad_stab (orig);
       return FALSE;
     }

   stub = FALSE;
   if (debug_get_type_kind (dhandle, type) == DEBUG_KIND_METHOD
       && debug_get_parameter_types (dhandle, type, &varargs) == ((void*)0))
     stub = TRUE;

   argtypes = savestring (*pp, p - *pp);
   *pp = p + 1;

   switch (**pp)
     {
     case '0':
       visibility = DEBUG_VISIBILITY_PRIVATE;
       break;
     case '1':
       visibility = DEBUG_VISIBILITY_PROTECTED;
       break;
     default:
       visibility = DEBUG_VISIBILITY_PUBLIC;
       break;
     }
   ++*pp;

   constp = FALSE;
   volatilep = FALSE;
   switch (**pp)
     {
     case 'A':

       ++*pp;
       break;
     case 'B':

       constp = TRUE;
       ++*pp;
       break;
     case 'C':

       volatilep = TRUE;
       ++*pp;
       break;
     case 'D':

       constp = TRUE;
       volatilep = TRUE;
       ++*pp;
       break;
     case '*':
     case '?':
     case '.':

       break;
     default:
       warn_stab (orig, _("const/volatile indicator missing"));
       break;
     }

   staticp = FALSE;
   switch (**pp)
     {
     case '*':



       ++*pp;
       voffset = parse_number (pp, (bfd_boolean *) ((void*)0));
       if (**pp != ';')
  {
    bad_stab (orig);
    return FALSE;
  }
       ++*pp;
       voffset &= 0x7fffffff;

       if (**pp == ';' || **pp == '\0')
  {

    context = DEBUG_TYPE_NULL;
  }
       else
  {



    look_ahead_type = parse_stab_type (dhandle, info,
           (const char *) ((void*)0),
           pp,
           (debug_type **) ((void*)0));
    if (**pp == ':')
      {

        context = DEBUG_TYPE_NULL;
      }
    else
      {
        context = look_ahead_type;
        look_ahead_type = DEBUG_TYPE_NULL;
        if (**pp != ';')
   {
     bad_stab (orig);
     return FALSE;
   }
        ++*pp;
      }
  }
       break;

     case '?':

       ++*pp;
       staticp = TRUE;
       voffset = 0;
       context = DEBUG_TYPE_NULL;
       if (strncmp (argtypes, name, strlen (name)) != 0)
  stub = TRUE;
       break;

     default:
       warn_stab (orig, "member function type missing");
       voffset = 0;
       context = DEBUG_TYPE_NULL;
       break;

     case '.':
       ++*pp;
       voffset = 0;
       context = DEBUG_TYPE_NULL;
       break;
     }






   if (! stub)
     physname = argtypes;
   else
     {
       debug_type class_type, return_type;

       class_type = stab_find_type (dhandle, info, typenums);
       if (class_type == DEBUG_TYPE_NULL)
  return FALSE;
       return_type = debug_get_return_type (dhandle, type);
       if (return_type == DEBUG_TYPE_NULL)
  {
    bad_stab (orig);
    return FALSE;
  }
       type = parse_stab_argtypes (dhandle, info, class_type, name,
       tagname, return_type, argtypes,
       constp, volatilep, &physname);
       if (type == DEBUG_TYPE_NULL)
  return FALSE;
     }

   if (cvars + 1 >= allocvars)
     {
       allocvars += 10;
       variants = ((debug_method_variant *)
     xrealloc (variants,
        allocvars * sizeof *variants));
     }

   if (! staticp)
     variants[cvars] = debug_make_method_variant (dhandle, physname,
        type, visibility,
        constp, volatilep,
        voffset, context);
   else
     variants[cvars] = debug_make_static_method_variant (dhandle,
        physname,
        type,
        visibility,
        constp,
        volatilep);
   if (variants[cvars] == DEBUG_METHOD_VARIANT_NULL)
     return FALSE;

   ++cvars;
 }
      while (**pp != ';' && **pp != '\0');

      variants[cvars] = DEBUG_METHOD_VARIANT_NULL;

      if (**pp != '\0')
 ++*pp;

      if (c + 1 >= alloc)
 {
   alloc += 10;
   methods = ((debug_method *)
       xrealloc (methods, alloc * sizeof *methods));
 }

      methods[c] = debug_make_method (dhandle, name, variants);

      ++c;
    }

  if (methods != ((void*)0))
    methods[c] = DEBUG_METHOD_NULL;

  *retp = methods;

  return TRUE;
}
