
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfd_ext {int rfd; } ;
typedef int bfd ;
typedef int RFDT ;


 int H_GET_32 (int *,int ) ;
 int abort () ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_rfd_in (bfd *abfd, void * ext_ptr, RFDT *intern)
{
  struct rfd_ext *ext = (struct rfd_ext *) ext_ptr;

  *intern = H_GET_32 (abfd, ext->rfd);





}
