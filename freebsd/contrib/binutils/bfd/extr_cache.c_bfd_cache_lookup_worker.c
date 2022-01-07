
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef enum cache_flag { ____Placeholder_cache_flag } cache_flag ;
struct TYPE_9__ {int flags; int * iostream; int where; struct TYPE_9__* my_archive; } ;
typedef TYPE_1__ bfd ;
typedef int FILE ;


 int BFD_IN_MEMORY ;
 int CACHE_NO_OPEN ;
 int CACHE_NO_SEEK ;
 int CACHE_NO_SEEK_ERROR ;
 int SEEK_SET ;
 int _ (char*) ;
 int _bfd_error_handler (int ,TYPE_1__*,int ) ;
 int abort () ;
 int bfd_errmsg (int ) ;
 int bfd_error_system_call ;
 int bfd_get_error () ;
 TYPE_1__* bfd_last_cache ;
 int * bfd_open_file (TYPE_1__*) ;
 int bfd_set_error (int ) ;
 int insert (TYPE_1__*) ;
 scalar_t__ real_fseek (int *,int ,int ) ;
 int snip (TYPE_1__*) ;
 int stub1 (int ,TYPE_1__*,int ) ;

__attribute__((used)) static FILE *
bfd_cache_lookup_worker (bfd *abfd, enum cache_flag flag)
{
  bfd *orig_bfd = abfd;
  if ((abfd->flags & BFD_IN_MEMORY) != 0)
    abort ();

  if (abfd->my_archive)
    abfd = abfd->my_archive;

  if (abfd->iostream != ((void*)0))
    {

      if (abfd != bfd_last_cache)
 {
   snip (abfd);
   insert (abfd);
 }
      return (FILE *) abfd->iostream;
    }

  if (flag & CACHE_NO_OPEN)
    return ((void*)0);

  if (bfd_open_file (abfd) == ((void*)0))
    ;
  else if (!(flag & CACHE_NO_SEEK)
    && real_fseek ((FILE *) abfd->iostream, abfd->where, SEEK_SET) != 0
    && !(flag & CACHE_NO_SEEK_ERROR))
    bfd_set_error (bfd_error_system_call);
  else
    return (FILE *) abfd->iostream;

  (*_bfd_error_handler) (_("reopening %B: %s\n"),
    orig_bfd, bfd_errmsg (bfd_get_error ()));
  return ((void*)0);
}
