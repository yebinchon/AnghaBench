
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfd_ext {int rfd; } ;
typedef int bfd ;
typedef int RFDT ;


 int H_PUT_32 (int *,int const,int ) ;
 int abort () ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_rfd_out (bfd *abfd, const RFDT *intern, void * ext_ptr)
{
  struct rfd_ext *ext = (struct rfd_ext *) ext_ptr;

  H_PUT_32 (abfd, *intern, ext->rfd);





}
