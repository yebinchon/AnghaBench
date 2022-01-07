
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
 scalar_t__ fwrite (void const*,int,scalar_t__,int *) ;

__attribute__((used)) static file_ptr
cache_bwrite (struct bfd *abfd, const void *where, file_ptr nbytes)
{
  file_ptr nwrite;
  FILE *f = bfd_cache_lookup (abfd, 0);
  if (f == ((void*)0))
    return 0;
  nwrite = fwrite (where, 1, nbytes, f);
  if (nwrite < nbytes && ferror (f))
    {
      bfd_set_error (bfd_error_system_call);
      return -1;
    }
  return nwrite;
}
