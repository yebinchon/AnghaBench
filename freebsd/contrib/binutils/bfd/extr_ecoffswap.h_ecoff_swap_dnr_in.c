
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dnr_ext {int d_index; int d_rfd; } ;
typedef int bfd ;
struct TYPE_3__ {void* index; void* rfd; } ;
typedef TYPE_1__ DNR ;


 void* H_GET_32 (int *,int ) ;
 int abort () ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_dnr_in (bfd *abfd, void * ext_copy, DNR *intern)
{
  struct dnr_ext ext[1];

  *ext = *(struct dnr_ext *) ext_copy;

  intern->rfd = H_GET_32 (abfd, ext->d_rfd);
  intern->index = H_GET_32 (abfd, ext->d_index);





}
