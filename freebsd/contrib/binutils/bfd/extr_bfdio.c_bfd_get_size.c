
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_size; } ;
struct bfd_in_memory {int size; } ;
typedef int file_ptr ;
struct TYPE_6__ {int flags; TYPE_1__* iovec; scalar_t__ iostream; } ;
typedef TYPE_2__ bfd ;
struct TYPE_5__ {scalar_t__ (* bstat ) (TYPE_2__*,struct stat*) ;} ;


 int BFD_IN_MEMORY ;
 scalar_t__ stub1 (TYPE_2__*,struct stat*) ;

file_ptr
bfd_get_size (bfd *abfd)
{
  struct stat buf;

  if ((abfd->flags & BFD_IN_MEMORY) != 0)
    return ((struct bfd_in_memory *) abfd->iostream)->size;

  if (abfd->iovec == ((void*)0))
    return 0;

  if (abfd->iovec->bstat (abfd, &buf) != 0)
    return 0;

  return buf.st_size;
}
