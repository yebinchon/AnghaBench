
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int debug_type ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int DEBUG_TYPE_NULL ;
 int FALSE ;
 int TRUE ;
 int bad_stab (char const*) ;
 int debug_make_int_type (void*,int,int ) ;
 int debug_make_void_type (void*) ;
 int parse_number (char const**,int *) ;

__attribute__((used)) static debug_type
parse_stab_sun_builtin_type (void *dhandle, const char **pp)
{
  const char *orig;
  bfd_boolean unsignedp;
  bfd_vma bits;

  orig = *pp;

  switch (**pp)
    {
    case 's':
      unsignedp = FALSE;
      break;
    case 'u':
      unsignedp = TRUE;
      break;
    default:
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;





  if (**pp == 'c')
    ++*pp;





  (void) parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;


  (void) parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;


  bits = parse_number (pp, (bfd_boolean *) ((void*)0));







  if (**pp == ';')
    ++*pp;

  if (bits == 0)
    return debug_make_void_type (dhandle);

  return debug_make_int_type (dhandle, bits / 8, unsignedp);
}
