
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd {int where; } ;
typedef int file_ptr ;
typedef int FILE ;


 int CACHE_NO_OPEN ;
 int * bfd_cache_lookup (struct bfd*,int ) ;
 int real_ftell (int *) ;

__attribute__((used)) static file_ptr
cache_btell (struct bfd *abfd)
{
  FILE *f = bfd_cache_lookup (abfd, CACHE_NO_OPEN);
  if (f == ((void*)0))
    return abfd->where;
  return real_ftell (f);
}
