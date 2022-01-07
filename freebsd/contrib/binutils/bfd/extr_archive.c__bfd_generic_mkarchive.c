
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct artdata {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_6__ {int aout_ar_data; } ;
struct TYPE_7__ {TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;


 int FALSE ;
 int TRUE ;
 int * bfd_ardata (TYPE_2__*) ;
 int bfd_zalloc (TYPE_2__*,int) ;

bfd_boolean
_bfd_generic_mkarchive (bfd *abfd)
{
  bfd_size_type amt = sizeof (struct artdata);

  abfd->tdata.aout_ar_data = bfd_zalloc (abfd, amt);
  if (bfd_ardata (abfd) == ((void*)0))
    return FALSE;
  return TRUE;
}
