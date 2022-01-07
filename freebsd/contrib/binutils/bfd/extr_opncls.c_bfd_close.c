
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct stat {unsigned int st_mode; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_12__ {int flags; scalar_t__ direction; int filename; TYPE_1__* iovec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_11__ {scalar_t__ (* bclose ) (TYPE_2__*) ;} ;


 int BFD_IN_MEMORY ;
 int BFD_SEND (TYPE_2__*,int ,TYPE_2__*) ;
 int BFD_SEND_FMT (TYPE_2__*,int ,TYPE_2__*) ;
 int EXEC_P ;
 scalar_t__ FALSE ;
 unsigned int S_IXGRP ;
 unsigned int S_IXOTH ;
 unsigned int S_IXUSR ;
 scalar_t__ TRUE ;
 int _bfd_delete_bfd (TYPE_2__*) ;
 int _bfd_write_contents ;
 int _close_and_cleanup ;
 scalar_t__ bfd_write_p (TYPE_2__*) ;
 int chmod (int ,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 unsigned int umask (unsigned int) ;
 scalar_t__ write_direction ;

bfd_boolean
bfd_close (bfd *abfd)
{
  bfd_boolean ret;

  if (bfd_write_p (abfd))
    {
      if (! BFD_SEND_FMT (abfd, _bfd_write_contents, (abfd)))
 return FALSE;
    }

  if (! BFD_SEND (abfd, _close_and_cleanup, (abfd)))
    return FALSE;



  if (!(abfd->flags & BFD_IN_MEMORY))
    ret = abfd->iovec->bclose (abfd);
  else
    ret = TRUE;



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
