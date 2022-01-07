
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {int * iostream; int * iovec; } ;
typedef TYPE_1__ bfd ;


 int TRUE ;
 int bfd_cache_delete (TYPE_1__*) ;
 int cache_iovec ;

bfd_boolean
bfd_cache_close (bfd *abfd)
{
  if (abfd->iovec != &cache_iovec)
    return TRUE;

  if (abfd->iostream == ((void*)0))

    return TRUE;

  return bfd_cache_delete (abfd);
}
