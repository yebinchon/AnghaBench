
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int bfd_target ;
struct TYPE_8__ {char const* filename; int opened_once; int direction; int * iostream; } ;
typedef TYPE_1__ bfd ;


 int TRUE ;
 int _bfd_delete_bfd (TYPE_1__*) ;
 TYPE_1__* _bfd_new_bfd () ;
 int bfd_cache_init (TYPE_1__*) ;
 int bfd_error_system_call ;
 int * bfd_find_target (char const*,TYPE_1__*) ;
 int bfd_set_cacheable (TYPE_1__*,int ) ;
 int bfd_set_error (int ) ;
 int both_direction ;
 int * fdopen (int,char const*) ;
 int read_direction ;
 int * real_fopen (char const*,char const*) ;
 int write_direction ;

bfd *
bfd_fopen (const char *filename, const char *target, const char *mode, int fd)
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






    nbfd->iostream = real_fopen (filename, mode);
  if (nbfd->iostream == ((void*)0))
    {
      bfd_set_error (bfd_error_system_call);
      _bfd_delete_bfd (nbfd);
      return ((void*)0);
    }


  nbfd->filename = filename;



  if ((mode[0] == 'r' || mode[0] == 'w' || mode[0] == 'a')
      && mode[1] == '+')
    nbfd->direction = both_direction;
  else if (mode[0] == 'r')
    nbfd->direction = read_direction;
  else
    nbfd->direction = write_direction;

  if (! bfd_cache_init (nbfd))
    {
      _bfd_delete_bfd (nbfd);
      return ((void*)0);
    }
  nbfd->opened_once = TRUE;




  if (fd == -1)
    (void) bfd_set_cacheable (nbfd, TRUE);

  return nbfd;
}
