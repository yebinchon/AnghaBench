
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd {int dummy; } ;
typedef int FILE ;


 int CACHE_NO_OPEN ;
 int * bfd_cache_lookup (struct bfd*,int ) ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 int fflush (int *) ;

__attribute__((used)) static int
cache_bflush (struct bfd *abfd)
{
  int sts;
  FILE *f = bfd_cache_lookup (abfd, CACHE_NO_OPEN);
  if (f == ((void*)0))
    return 0;
  sts = fflush (f);
  if (sts < 0)
    bfd_set_error (bfd_error_system_call);
  return sts;
}
