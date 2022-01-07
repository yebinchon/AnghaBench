
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {unsigned int st_mode; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_5__ {scalar_t__ direction; int flags; int filename; } ;
typedef TYPE_1__ bfd ;


 int EXEC_P ;
 unsigned int S_IXGRP ;
 unsigned int S_IXOTH ;
 unsigned int S_IXUSR ;
 int _bfd_delete_bfd (TYPE_1__*) ;
 scalar_t__ bfd_cache_close (TYPE_1__*) ;
 int chmod (int ,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 unsigned int umask (unsigned int) ;
 scalar_t__ write_direction ;

bfd_boolean
bfd_close_all_done (bfd *abfd)
{
  bfd_boolean ret;

  ret = bfd_cache_close (abfd);



  if (ret
      && abfd->direction == write_direction
      && abfd->flags & EXEC_P)
    {
      struct stat buf;

      if (stat (abfd->filename, &buf) == 0)
 {
   unsigned int mask = umask (0);

   umask (mask);
   chmod (abfd->filename,
   (0777
    & (buf.st_mode | ((S_IXUSR | S_IXGRP | S_IXOTH) &~ mask))));
 }
    }

  _bfd_delete_bfd (abfd);

  return ret;
}
