
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ format; } ;
typedef TYPE_1__ bfd ;


 char const* BFD_SEND (TYPE_1__*,int ,TYPE_1__*) ;
 int _core_file_failing_command ;
 scalar_t__ bfd_core ;
 int bfd_error_invalid_operation ;
 int bfd_set_error (int ) ;

const char *
bfd_core_file_failing_command (bfd *abfd)
{
  if (abfd->format != bfd_core)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return ((void*)0);
    }
  return BFD_SEND (abfd, _core_file_failing_command, (abfd));
}
