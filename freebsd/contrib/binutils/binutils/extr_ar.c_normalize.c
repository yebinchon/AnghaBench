
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_4__ {scalar_t__ ar_max_namelen; } ;


 scalar_t__ ar_truncate ;
 scalar_t__ full_pathname ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 void* strrchr (char const*,char) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static const char *
normalize (const char *file, bfd *abfd)
{
  const char *filename;

  if (full_pathname)
    return file;

  filename = strrchr (file, '/');
  if (filename != (char *) ((void*)0))
    filename++;
  else
    filename = file;

  if (ar_truncate
      && abfd != ((void*)0)
      && strlen (filename) > abfd->xvec->ar_max_namelen)
    {
      char *s;


      s = (char *) xmalloc (abfd->xvec->ar_max_namelen + 1);
      memcpy (s, filename, abfd->xvec->ar_max_namelen);
      s[abfd->xvec->ar_max_namelen] = '\0';
      filename = s;
    }

  return filename;
}
