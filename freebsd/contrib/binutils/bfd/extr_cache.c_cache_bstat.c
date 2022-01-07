
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct bfd {int dummy; } ;
typedef int FILE ;


 int CACHE_NO_SEEK_ERROR ;
 int * bfd_cache_lookup (struct bfd*,int ) ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 int fileno (int *) ;
 int fstat (int ,struct stat*) ;

__attribute__((used)) static int
cache_bstat (struct bfd *abfd, struct stat *sb)
{
  int sts;
  FILE *f = bfd_cache_lookup (abfd, CACHE_NO_SEEK_ERROR);
  if (f == ((void*)0))
    return -1;
  sts = fstat (fileno (f), sb);
  if (sts < 0)
    bfd_set_error (bfd_error_system_call);
  return sts;
}
