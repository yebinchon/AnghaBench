
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_6__ {int flags; TYPE_1__* iovec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_5__ {int (* bstat ) (TYPE_2__*,struct stat*) ;} ;


 int BFD_IN_MEMORY ;
 int abort () ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 int stub1 (TYPE_2__*,struct stat*) ;

int
bfd_stat (bfd *abfd, struct stat *statbuf)
{
  int result;

  if ((abfd->flags & BFD_IN_MEMORY) != 0)
    abort ();

  if (abfd->iovec)
    result = abfd->iovec->bstat (abfd, statbuf);
  else
    result = -1;

  if (result < 0)
    bfd_set_error (bfd_error_system_call);
  return result;
}
