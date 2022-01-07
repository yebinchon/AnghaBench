
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct stat {int st_mode; scalar_t__ st_size; } ;
struct TYPE_11__ {scalar_t__ me_record; } ;
struct TYPE_12__ {TYPE_1__ r; } ;
struct TYPE_15__ {TYPE_2__ w; } ;
typedef TYPE_5__ ieee_data_type ;
typedef int ieee_ar_data_type ;
struct TYPE_16__ {TYPE_4__* my_archive; } ;
typedef TYPE_6__ bfd ;
struct TYPE_13__ {int * ieee_ar_data; } ;
struct TYPE_14__ {TYPE_3__ tdata; } ;


 TYPE_5__* IEEE_DATA (TYPE_6__*) ;
 int bfd_error_invalid_operation ;
 int bfd_error_wrong_format ;
 int bfd_set_error (int ) ;
 int * ieee_object_p (TYPE_6__*) ;

__attribute__((used)) static int
ieee_generic_stat_arch_elt (bfd *abfd, struct stat *buf)
{
  ieee_ar_data_type *ar = (ieee_ar_data_type *) ((void*)0);
  ieee_data_type *ieee;

  if (abfd->my_archive != ((void*)0))
    ar = abfd->my_archive->tdata.ieee_ar_data;
  if (ar == (ieee_ar_data_type *) ((void*)0))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return -1;
    }

  if (IEEE_DATA (abfd) == ((void*)0))
    {
      if (ieee_object_p (abfd) == ((void*)0))
 {
   bfd_set_error (bfd_error_wrong_format);
   return -1;
 }
    }

  ieee = IEEE_DATA (abfd);

  buf->st_size = ieee->w.r.me_record + 1;
  buf->st_mode = 0644;
  return 0;
}
