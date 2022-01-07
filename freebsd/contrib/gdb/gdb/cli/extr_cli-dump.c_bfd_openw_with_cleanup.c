
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_object ;
 int * bfd_openw (char*,char const*) ;
 int bfd_set_format (int *,int ) ;
 int error (char*,...) ;
 int make_cleanup_bfd_close (int *) ;

__attribute__((used)) static bfd *
bfd_openw_with_cleanup (char *filename, const char *target, char *mode)
{
  bfd *obfd;

  if (*mode == 'w')
    {
      obfd = bfd_openw (filename, target);
      if (obfd == ((void*)0))
 error ("Failed to open %s: %s.", filename,
        bfd_errmsg (bfd_get_error ()));
      make_cleanup_bfd_close (obfd);
      if (!bfd_set_format (obfd, bfd_object))
 error ("bfd_openw_with_cleanup: %s.", bfd_errmsg (bfd_get_error ()));
    }
  else if (*mode == 'a')
    {
      error ("bfd_openw does not work with append.");
    }
  else
    error ("bfd_openw_with_cleanup: unknown mode %s.", mode);

  return obfd;
}
