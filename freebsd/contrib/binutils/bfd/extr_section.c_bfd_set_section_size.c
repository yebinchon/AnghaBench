
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_6__ {scalar_t__ output_has_begun; } ;
typedef TYPE_2__ bfd ;
struct TYPE_5__ {int size; } ;


 int FALSE ;
 int TRUE ;
 int bfd_error_invalid_operation ;
 int bfd_set_error (int ) ;

bfd_boolean
bfd_set_section_size (bfd *abfd, sec_ptr ptr, bfd_size_type val)
{



  if (abfd->output_has_begun)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  ptr->size = val;
  return TRUE;
}
