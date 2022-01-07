
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 char* _ (char*) ;
 int bfd_copy_private_header_data (int *,int *) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int non_fatal (char*,int ,char const*,int ) ;
 int status ;

__attribute__((used)) static void
setup_bfd_headers (bfd *ibfd, bfd *obfd)
{
  const char *err;



  if (! bfd_copy_private_header_data (ibfd, obfd))
    {
      err = _("private header data");
      goto loser;
    }


  return;

loser:
  non_fatal (_("%s: error in %s: %s"),
      bfd_get_filename (ibfd),
      err, bfd_errmsg (bfd_get_error ()));
  status = 1;
}
