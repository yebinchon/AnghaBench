
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd {int dummy; } ;


 int bfd_cache_close (struct bfd*) ;

__attribute__((used)) static int
cache_bclose (struct bfd *abfd)
{
  return bfd_cache_close (abfd);
}
