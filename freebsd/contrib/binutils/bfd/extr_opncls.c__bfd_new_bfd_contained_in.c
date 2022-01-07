
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int target_defaulted; int direction; struct TYPE_5__* my_archive; int iovec; int xvec; } ;
typedef TYPE_1__ bfd ;


 TYPE_1__* _bfd_new_bfd () ;
 int read_direction ;

bfd *
_bfd_new_bfd_contained_in (bfd *obfd)
{
  bfd *nbfd;

  nbfd = _bfd_new_bfd ();
  if (nbfd == ((void*)0))
    return ((void*)0);
  nbfd->xvec = obfd->xvec;
  nbfd->iovec = obfd->iovec;
  nbfd->my_archive = obfd;
  nbfd->direction = read_direction;
  nbfd->target_defaulted = obfd->target_defaulted;
  return nbfd;
}
