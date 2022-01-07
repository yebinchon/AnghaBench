
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
typedef int debug_type ;
typedef int bfd_boolean ;


 int DEBUG_TYPE_NULL ;
 int FALSE ;
 int TRUE ;
 int bad_stab (char const*) ;
 int parse_stab_type (void*,struct stab_handle*,char const*,char const**,int **) ;
 int parse_stab_type_number (char const**,int*) ;

__attribute__((used)) static bfd_boolean
parse_stab_tilde_field (void *dhandle, struct stab_handle *info,
   const char **pp, const int *typenums,
   debug_type *retvptrbase, bfd_boolean *retownvptr)
{
  const char *orig;
  const char *hold;
  int vtypenums[2];

  *retvptrbase = DEBUG_TYPE_NULL;
  *retownvptr = FALSE;

  orig = *pp;


  if (**pp == ';')
    ++*pp;

  if (**pp != '~')
    return TRUE;

  ++*pp;

  if (**pp == '=' || **pp == '+' || **pp == '-')
    {


      ++*pp;
    }

  if (**pp != '%')
    return TRUE;

  ++*pp;

  hold = *pp;



  if (! parse_stab_type_number (pp, vtypenums))
    return FALSE;

  if (vtypenums[0] == typenums[0]
      && vtypenums[1] == typenums[1])
    *retownvptr = TRUE;
  else
    {
      debug_type vtype;
      const char *p;

      *pp = hold;

      vtype = parse_stab_type (dhandle, info, (const char *) ((void*)0), pp,
          (debug_type **) ((void*)0));
      for (p = *pp; *p != ';' && *p != '\0'; p++)
 ;
      if (*p != ';')
 {
   bad_stab (orig);
   return FALSE;
 }

      *retvptrbase = vtype;

      *pp = p + 1;
    }

  return TRUE;
}
