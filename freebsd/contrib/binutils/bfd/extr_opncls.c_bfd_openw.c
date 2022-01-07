
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd_target ;
struct TYPE_7__ {char const* filename; int direction; } ;
typedef TYPE_1__ bfd ;


 int _bfd_delete_bfd (TYPE_1__*) ;
 TYPE_1__* _bfd_new_bfd () ;
 int bfd_error_system_call ;
 int * bfd_find_target (char const*,TYPE_1__*) ;
 int * bfd_open_file (TYPE_1__*) ;
 int bfd_set_error (int ) ;
 int write_direction ;

bfd *
bfd_openw (const char *filename, const char *target)
{
  bfd *nbfd;
  const bfd_target *target_vec;



  nbfd = _bfd_new_bfd ();
  if (nbfd == ((void*)0))
    return ((void*)0);

  target_vec = bfd_find_target (target, nbfd);
  if (target_vec == ((void*)0))
    {
      _bfd_delete_bfd (nbfd);
      return ((void*)0);
    }

  nbfd->filename = filename;
  nbfd->direction = write_direction;

  if (bfd_open_file (nbfd) == ((void*)0))
    {

      bfd_set_error (bfd_error_system_call);
      _bfd_delete_bfd (nbfd);
      return ((void*)0);
  }

  return nbfd;
}
