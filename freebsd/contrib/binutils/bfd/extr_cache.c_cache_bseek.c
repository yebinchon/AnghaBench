
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd {int dummy; } ;
typedef int file_ptr ;
typedef int FILE ;


 int CACHE_NO_SEEK ;
 int SEEK_CUR ;
 int * bfd_cache_lookup (struct bfd*,int ) ;
 int real_fseek (int *,int ,int) ;

__attribute__((used)) static int
cache_bseek (struct bfd *abfd, file_ptr offset, int whence)
{
  FILE *f = bfd_cache_lookup (abfd, whence != SEEK_CUR ? CACHE_NO_SEEK : 0);
  if (f == ((void*)0))
    return -1;
  return real_fseek (f, offset, whence);
}
