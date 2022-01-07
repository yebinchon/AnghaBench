
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* lru_next; TYPE_1__* lru_prev; } ;
typedef TYPE_2__ bfd ;
struct TYPE_5__ {TYPE_2__* lru_next; } ;


 TYPE_2__* bfd_last_cache ;

__attribute__((used)) static void
snip (bfd *abfd)
{
  abfd->lru_prev->lru_next = abfd->lru_next;
  abfd->lru_next->lru_prev = abfd->lru_prev;
  if (abfd == bfd_last_cache)
    {
      bfd_last_cache = abfd->lru_next;
      if (abfd == bfd_last_cache)
 bfd_last_cache = ((void*)0);
    }
}
