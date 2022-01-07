
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 scalar_t__ S_TYPEISMQ (struct stat const*) ;
 scalar_t__ S_TYPEISSEM (struct stat const*) ;
 scalar_t__ S_TYPEISSHM (struct stat const*) ;
 scalar_t__ S_TYPEISTMO (struct stat const*) ;
 char const* _ (char*) ;

char const *
file_type (struct stat const *st)
{






  if (S_ISREG (st->st_mode))
    return st->st_size == 0 ? _("regular empty file") : _("regular file");

  if (S_ISDIR (st->st_mode))
    return _("directory");

  if (S_ISBLK (st->st_mode))
    return _("block special file");

  if (S_ISCHR (st->st_mode))
    return _("character special file");

  if (S_ISFIFO (st->st_mode))
    return _("fifo");

  if (S_ISLNK (st->st_mode))
    return _("symbolic link");

  if (S_ISSOCK (st->st_mode))
    return _("socket");

  if (S_TYPEISMQ (st))
    return _("message queue");

  if (S_TYPEISSEM (st))
    return _("semaphore");

  if (S_TYPEISSHM (st))
    return _("shared memory object");

  if (S_TYPEISTMO (st))
    return _("typed memory object");

  return _("weird file");
}
