
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_5__ {scalar_t__ direction; int mtime_set; scalar_t__ iostream; int where; struct TYPE_5__* lru_prev; int cacheable; } ;
typedef TYPE_1__ bfd ;
typedef int FILE ;


 int TRUE ;
 int bfd_cache_delete (TYPE_1__*) ;
 int bfd_get_mtime (TYPE_1__*) ;
 TYPE_1__* bfd_last_cache ;
 scalar_t__ no_direction ;
 scalar_t__ read_direction ;
 int real_ftell (int *) ;

__attribute__((used)) static bfd_boolean
close_one (void)
{
  register bfd *kill;

  if (bfd_last_cache == ((void*)0))
    kill = ((void*)0);
  else
    {
      for (kill = bfd_last_cache->lru_prev;
    ! kill->cacheable;
    kill = kill->lru_prev)
 {
   if (kill == bfd_last_cache)
     {
       kill = ((void*)0);
       break;
     }
 }
    }

  if (kill == ((void*)0))
    {

      return TRUE;
    }

  kill->where = real_ftell ((FILE *) kill->iostream);
  if (kill->direction == no_direction || kill->direction == read_direction)
    {
      bfd_get_mtime (kill);
      kill->mtime_set = TRUE;
    }

  return bfd_cache_delete (kill);
}
