
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_6__ {scalar_t__ format; } ;
typedef TYPE_1__ bfd ;


 int BFD_SEND (TYPE_1__*,int ,TYPE_1__*) ;
 int FALSE ;
 int _core_file_matches_executable_p ;
 scalar_t__ bfd_core ;
 int bfd_error_wrong_format ;
 scalar_t__ bfd_object ;
 int bfd_set_error (int ) ;

bfd_boolean
core_file_matches_executable_p (bfd *core_bfd, bfd *exec_bfd)
{
  if (core_bfd->format != bfd_core || exec_bfd->format != bfd_object)
    {
      bfd_set_error (bfd_error_wrong_format);
      return FALSE;
    }

  return BFD_SEND (core_bfd, _core_file_matches_executable_p,
     (core_bfd, exec_bfd));
}
