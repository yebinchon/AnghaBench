
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* filename; int direction; int xvec; } ;
typedef TYPE_1__ bfd ;


 TYPE_1__* _bfd_new_bfd () ;
 int bfd_object ;
 int bfd_set_format (TYPE_1__*,int ) ;
 int no_direction ;

bfd *
bfd_create (const char *filename, bfd *templ)
{
  bfd *nbfd;

  nbfd = _bfd_new_bfd ();
  if (nbfd == ((void*)0))
    return ((void*)0);
  nbfd->filename = filename;
  if (templ)
    nbfd->xvec = templ->xvec;
  nbfd->direction = no_direction;
  bfd_set_format (nbfd, bfd_object);

  return nbfd;
}
