
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int debug_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int DEBUG_TYPE_NULL ;
 scalar_t__ NF_COMPLEX ;
 scalar_t__ NF_COMPLEX16 ;
 scalar_t__ NF_COMPLEX32 ;
 int bad_stab (char const*) ;
 int debug_make_complex_type (void*,scalar_t__) ;
 int debug_make_float_type (void*,scalar_t__) ;
 scalar_t__ parse_number (char const**,int *) ;

__attribute__((used)) static debug_type
parse_stab_sun_floating_type (void *dhandle, const char **pp)
{
  const char *orig;
  bfd_vma details;
  bfd_vma bytes;

  orig = *pp;



  details = parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }


  bytes = parse_number (pp, (bfd_boolean *) ((void*)0));
  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }

  if (details == NF_COMPLEX
      || details == NF_COMPLEX16
      || details == NF_COMPLEX32)
    return debug_make_complex_type (dhandle, bytes);

  return debug_make_float_type (dhandle, bytes);
}
