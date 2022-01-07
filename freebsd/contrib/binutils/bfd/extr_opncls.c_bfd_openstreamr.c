
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd_target ;
struct TYPE_7__ {char const* filename; int direction; int * iostream; } ;
typedef TYPE_1__ bfd ;
typedef int FILE ;


 int _bfd_delete_bfd (TYPE_1__*) ;
 TYPE_1__* _bfd_new_bfd () ;
 int bfd_cache_init (TYPE_1__*) ;
 int * bfd_find_target (char const*,TYPE_1__*) ;
 int read_direction ;

bfd *
bfd_openstreamr (const char *filename, const char *target, void *streamarg)
{
  FILE *stream = streamarg;
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

  nbfd->iostream = stream;
  nbfd->filename = filename;
  nbfd->direction = read_direction;

  if (! bfd_cache_init (nbfd))
    {
      _bfd_delete_bfd (nbfd);
      return ((void*)0);
    }

  return nbfd;
}
