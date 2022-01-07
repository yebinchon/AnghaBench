
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long gprmask; unsigned long fprmask; unsigned long* cprmask; } ;
typedef TYPE_1__ ecoff_data_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_get_format (int *) ;
 scalar_t__ bfd_object ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_target_ecoff_flavour ;
 TYPE_1__* ecoff_data (int *) ;

bfd_boolean
bfd_ecoff_set_regmasks (bfd *abfd,
   unsigned long gprmask,
   unsigned long fprmask,
   unsigned long *cprmask)
{
  ecoff_data_type *tdata;

  if (bfd_get_flavour (abfd) != bfd_target_ecoff_flavour
      || bfd_get_format (abfd) != bfd_object)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  tdata = ecoff_data (abfd);
  tdata->gprmask = gprmask;
  tdata->fprmask = fprmask;
  if (cprmask != ((void*)0))
    {
      int i;

      for (i = 0; i < 3; i++)
 tdata->cprmask[i] = cprmask[i];
    }

  return TRUE;
}
