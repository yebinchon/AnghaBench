
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
typedef scalar_t__ debug_type ;
typedef scalar_t__ debug_field ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 scalar_t__ DEBUG_FIELD_NULL ;
 scalar_t__ DEBUG_TYPE_NULL ;
 int DEBUG_VISIBILITY_PRIVATE ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int bad_stab (char const*) ;
 char* concat (char*,char const*,char const*) ;
 char* debug_get_type_name (void*,scalar_t__) ;
 scalar_t__ debug_make_field (void*,char const*,scalar_t__,int ,int ,int ) ;
 int parse_number (char const**,int *) ;
 scalar_t__ parse_stab_type (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ;
 int warn_stab (char const*,int ) ;

__attribute__((used)) static bfd_boolean
parse_stab_cpp_abbrev (void *dhandle, struct stab_handle *info,
         const char **pp, debug_field *retp)
{
  const char *orig;
  int cpp_abbrev;
  debug_type context;
  const char *name;
  const char *typename;
  debug_type type;
  bfd_vma bitpos;

  *retp = DEBUG_FIELD_NULL;

  orig = *pp;

  if (**pp != 'v')
    {
      bad_stab (*pp);
      return FALSE;
    }
  ++*pp;

  cpp_abbrev = **pp;
  ++*pp;






  context = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
        (debug_type **) ((void*)0));
  if (context == DEBUG_TYPE_NULL)
    return FALSE;

  switch (cpp_abbrev)
    {
    case 'f':

      name = "_vptr$";
      break;
    case 'b':

      typename = debug_get_type_name (dhandle, context);
      if (typename == ((void*)0))
 {
   warn_stab (orig, _("unnamed $vb type"));
   typename = "FOO";
 }
      name = concat ("_vb$", typename, (const char *) ((void*)0));
      break;
    default:
      warn_stab (orig, _("unrecognized C++ abbreviation"));
      name = "INVALID_CPLUSPLUS_ABBREV";
      break;
    }

  if (**pp != ':')
    {
      bad_stab (orig);
      return FALSE;
    }
  ++*pp;

  type = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
     (debug_type **) ((void*)0));
  if (**pp != ',')
    {
      bad_stab (orig);
      return FALSE;
    }
  ++*pp;

  bitpos = parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ';')
    {
      bad_stab (orig);
      return FALSE;
    }
  ++*pp;

  *retp = debug_make_field (dhandle, name, type, bitpos, 0,
       DEBUG_VISIBILITY_PRIVATE);
  if (*retp == DEBUG_FIELD_NULL)
    return FALSE;

  return TRUE;
}
