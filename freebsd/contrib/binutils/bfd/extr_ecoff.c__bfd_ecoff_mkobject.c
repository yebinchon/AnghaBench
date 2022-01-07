
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ecoff_data_type ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_5__ {int * ecoff_obj_data; } ;
struct TYPE_6__ {TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;


 int FALSE ;
 int TRUE ;
 int * bfd_zalloc (TYPE_2__*,int) ;

bfd_boolean
_bfd_ecoff_mkobject (bfd *abfd)
{
  bfd_size_type amt = sizeof (ecoff_data_type);

  abfd->tdata.ecoff_obj_data = bfd_zalloc (abfd, amt);
  if (abfd->tdata.ecoff_obj_data == ((void*)0))
    return FALSE;

  return TRUE;
}
