
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
typedef scalar_t__ debug_type ;
typedef int bfd_signed_vma ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ DEBUG_TYPE_NULL ;
 scalar_t__ FALSE ;
 int ISDIGIT (char const) ;
 scalar_t__ TRUE ;
 int bad_stab (char const*) ;
 scalar_t__ debug_find_named_type (void*,char*) ;
 scalar_t__ debug_make_array_type (void*,scalar_t__,scalar_t__,int,int,scalar_t__) ;
 scalar_t__ debug_make_int_type (void*,int,scalar_t__) ;
 scalar_t__ parse_number (char const**,scalar_t__*) ;
 scalar_t__ parse_stab_type (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ;
 int parse_stab_type_number (char const**,int*) ;

__attribute__((used)) static debug_type
parse_stab_array_type (void *dhandle, struct stab_handle *info,
         const char **pp, bfd_boolean stringp)
{
  const char *orig;
  const char *p;
  int typenums[2];
  debug_type index_type;
  bfd_boolean adjustable;
  bfd_signed_vma lower, upper;
  debug_type element_type;
  orig = *pp;




  p = *pp;
  if (! parse_stab_type_number (&p, typenums))
    return DEBUG_TYPE_NULL;
  if (typenums[0] == 0 && typenums[1] == 0 && **pp != '=')
    {
      index_type = debug_find_named_type (dhandle, "int");
      if (index_type == DEBUG_TYPE_NULL)
 {
   index_type = debug_make_int_type (dhandle, 4, FALSE);
   if (index_type == DEBUG_TYPE_NULL)
     return DEBUG_TYPE_NULL;
 }
      *pp = p;
    }
  else
    {
      index_type = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
        (debug_type **) ((void*)0));
    }

  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  adjustable = FALSE;

  if (! ISDIGIT (**pp) && **pp != '-')
    {
      ++*pp;
      adjustable = TRUE;
    }

  lower = (bfd_signed_vma) parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  if (! ISDIGIT (**pp) && **pp != '-')
    {
      ++*pp;
      adjustable = TRUE;
    }

  upper = (bfd_signed_vma) parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  element_type = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
      (debug_type **) ((void*)0));
  if (element_type == DEBUG_TYPE_NULL)
    return DEBUG_TYPE_NULL;

  if (adjustable)
    {
      lower = 0;
      upper = -1;
    }

  return debug_make_array_type (dhandle, element_type, index_type, lower,
    upper, stringp);
}
