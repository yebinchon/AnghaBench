
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* iovec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_5__ {int (* bflush ) (TYPE_2__*) ;} ;


 int BFD_IN_MEMORY ;
 int stub1 (TYPE_2__*) ;

int
bfd_flush (bfd *abfd)
{
  if ((abfd->flags & BFD_IN_MEMORY) != 0)
    return 0;

  if (abfd->iovec)
    return abfd->iovec->bflush (abfd);
  return 0;
}
