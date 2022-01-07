
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef scalar_t__ debug_type ;
typedef int debug_field ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 scalar_t__ DEBUG_TYPE_NULL ;
 int DEBUG_VISIBILITY_IGNORE ;
 int DEBUG_VISIBILITY_PRIVATE ;
 int DEBUG_VISIBILITY_PROTECTED ;
 int DEBUG_VISIBILITY_PUBLIC ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int bad_stab (char const*) ;
 int debug_make_field (void*,char*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int debug_make_static_member (void*,char*,scalar_t__,char*,int) ;
 scalar_t__ parse_number (char const**,int *) ;
 scalar_t__ parse_stab_type (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ;
 char* savestring (char const*,int) ;
 char* strchr (char const*,char) ;
 int warn_stab (char const*,int ) ;

__attribute__((used)) static bfd_boolean
parse_stab_one_struct_field (void *dhandle, struct stab_handle *info,
        const char **pp, const char *p,
        debug_field *retp, bfd_boolean *staticsp)
{
  const char *orig;
  char *name;
  enum debug_visibility visibility;
  debug_type type;
  bfd_vma bitpos;
  bfd_vma bitsize;

  orig = *pp;



  name = savestring (*pp, p - *pp);

  *pp = p + 1;

  if (**pp != '/')
    visibility = DEBUG_VISIBILITY_PUBLIC;
  else
    {
      ++*pp;
      switch (**pp)
 {
 case '0':
   visibility = DEBUG_VISIBILITY_PRIVATE;
   break;
 case '1':
   visibility = DEBUG_VISIBILITY_PROTECTED;
   break;
 case '2':
   visibility = DEBUG_VISIBILITY_PUBLIC;
   break;
 default:
   warn_stab (orig, _("unknown visibility character for field"));
   visibility = DEBUG_VISIBILITY_PUBLIC;
   break;
 }
      ++*pp;
    }

  type = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
     (debug_type **) ((void*)0));
  if (type == DEBUG_TYPE_NULL)
    return FALSE;

  if (**pp == ':')
    {
      char *varname;


      ++*pp;
      p = strchr (*pp, ';');
      if (p == ((void*)0))
 {
   bad_stab (orig);
   return FALSE;
 }

      varname = savestring (*pp, p - *pp);

      *pp = p + 1;

      *retp = debug_make_static_member (dhandle, name, type, varname,
     visibility);
      *staticsp = TRUE;

      return TRUE;
    }

  if (**pp != ',')
    {
      bad_stab (orig);
      return FALSE;
    }
  ++*pp;

  bitpos = parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ',')
    {
      bad_stab (orig);
      return FALSE;
    }
  ++*pp;

  bitsize = parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ';')
    {
      bad_stab (orig);
      return FALSE;
    }
  ++*pp;

  if (bitpos == 0 && bitsize == 0)
    {
      visibility = DEBUG_VISIBILITY_IGNORE;
    }



  *retp = debug_make_field (dhandle, name, type, bitpos, bitsize, visibility);

  return TRUE;
}
