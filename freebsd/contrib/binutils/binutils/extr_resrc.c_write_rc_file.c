
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rc_uint_type ;
typedef int rc_res_id ;
typedef int rc_res_directory ;
typedef scalar_t__ bfd_signed_vma ;
typedef int FILE ;


 int FOPEN_WT ;
 int _ (char*) ;
 int errno ;
 int fatal (int ,char const*,int ) ;
 int * fopen (char const*,int ) ;
 int * stdout ;
 int strerror (int ) ;
 int write_rc_directory (int *,int const*,int const*,int const*,scalar_t__*,int) ;

void
write_rc_file (const char *filename, const rc_res_directory *resources)
{
  FILE *e;
  rc_uint_type language;

  if (filename == ((void*)0))
    e = stdout;
  else
    {
      e = fopen (filename, FOPEN_WT);
      if (e == ((void*)0))
 fatal (_("can't open `%s' for output: %s"), filename, strerror (errno));
    }

  language = (rc_uint_type) ((bfd_signed_vma) -1);
  write_rc_directory (e, resources, (const rc_res_id *) ((void*)0),
        (const rc_res_id *) ((void*)0), &language, 1);
}
