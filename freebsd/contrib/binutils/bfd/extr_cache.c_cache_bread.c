
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd {int dummy; } ;
typedef scalar_t__ file_ptr ;
typedef int FILE ;


 int * bfd_cache_lookup (struct bfd*,int ) ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 scalar_t__ ferror (int *) ;
 int fileno (int *) ;
 scalar_t__ fread (void*,int,scalar_t__,int *) ;
 scalar_t__ read (int ,void*,scalar_t__) ;

__attribute__((used)) static file_ptr
cache_bread (struct bfd *abfd, void *buf, file_ptr nbytes)
{
  FILE *f;
  file_ptr nread;
  if (nbytes == 0)
    return 0;

  f = bfd_cache_lookup (abfd, 0);
  if (f == ((void*)0))
    return 0;
  nread = fread (buf, 1, nbytes, f);



  if (nread < nbytes && ferror (f))
    {
      bfd_set_error (bfd_error_system_call);
      return -1;
    }

  return nread;
}
