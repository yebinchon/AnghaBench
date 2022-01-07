
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_check_format (int *,int ) ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_object ;
 int * bfd_openr (char const*,char const*) ;
 int error (char*,char const*,...) ;
 int make_cleanup_bfd_close (int *) ;

__attribute__((used)) static bfd *
bfd_openr_with_cleanup (const char *filename, const char *target)
{
  bfd *ibfd;

  ibfd = bfd_openr (filename, target);
  if (ibfd == ((void*)0))
    error ("Failed to open %s: %s.", filename,
    bfd_errmsg (bfd_get_error ()));

  make_cleanup_bfd_close (ibfd);
  if (!bfd_check_format (ibfd, bfd_object))
    error ("'%s' is not a recognized file format.", filename);

  return ibfd;
}
