
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {long st_mtime; } ;
struct TYPE_6__ {long mtime; TYPE_1__* iovec; scalar_t__ mtime_set; } ;
typedef TYPE_2__ bfd ;
struct TYPE_5__ {scalar_t__ (* bstat ) (TYPE_2__*,struct stat*) ;} ;


 scalar_t__ stub1 (TYPE_2__*,struct stat*) ;

long
bfd_get_mtime (bfd *abfd)
{
  struct stat buf;

  if (abfd->mtime_set)
    return abfd->mtime;

  if (abfd->iovec == ((void*)0))
    return 0;

  if (abfd->iovec->bstat (abfd, &buf) != 0)
    return 0;

  abfd->mtime = buf.st_mtime;
  return buf.st_mtime;
}
