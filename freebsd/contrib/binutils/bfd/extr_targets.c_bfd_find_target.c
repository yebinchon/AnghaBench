
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_target ;
struct TYPE_3__ {int const* xvec; int target_defaulted; } ;
typedef TYPE_1__ bfd ;


 int FALSE ;
 int TRUE ;
 int ** bfd_default_vector ;
 int ** bfd_target_vector ;
 int * find_target (char const*) ;
 char* getenv (char*) ;
 scalar_t__ strcmp (char const*,char*) ;

const bfd_target *
bfd_find_target (const char *target_name, bfd *abfd)
{
  const char *targname;
  const bfd_target *target;

  if (target_name != ((void*)0))
    targname = target_name;
  else
    targname = getenv ("GNUTARGET");


  if (targname == ((void*)0) || strcmp (targname, "default") == 0)
    {
      if (bfd_default_vector[0] != ((void*)0))
 target = bfd_default_vector[0];
      else
 target = bfd_target_vector[0];
      if (abfd)
 {
   abfd->xvec = target;
   abfd->target_defaulted = TRUE;
 }
      return target;
    }

  if (abfd)
    abfd->target_defaulted = FALSE;

  target = find_target (targname);
  if (target == ((void*)0))
    return ((void*)0);

  if (abfd)
    abfd->xvec = target;
  return target;
}
