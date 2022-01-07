
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ bfd_format ;
typedef int bfd_boolean ;
struct TYPE_6__ {scalar_t__ format; } ;
typedef TYPE_1__ bfd ;


 int BFD_SEND_FMT (TYPE_1__*,int ,TYPE_1__*) ;
 int FALSE ;
 int TRUE ;
 int _bfd_set_format ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_read_p (TYPE_1__*) ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_type_end ;
 scalar_t__ bfd_unknown ;

bfd_boolean
bfd_set_format (bfd *abfd, bfd_format format)
{
  if (bfd_read_p (abfd)
      || (unsigned int) abfd->format >= (unsigned int) bfd_type_end)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  if (abfd->format != bfd_unknown)
    return abfd->format == format;


  abfd->format = format;

  if (!BFD_SEND_FMT (abfd, _bfd_set_format, (abfd)))
    {
      abfd->format = bfd_unknown;
      return FALSE;
    }

  return TRUE;
}
