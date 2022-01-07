
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dnr_ext {int d_index; int d_rfd; } ;
typedef int bfd ;
struct TYPE_3__ {int index; int rfd; } ;
typedef TYPE_1__ DNR ;


 int H_PUT_32 (int *,int ,int ) ;
 int abort () ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_dnr_out (bfd *abfd, const DNR *intern_copy, void * ext_ptr)
{
  struct dnr_ext *ext = (struct dnr_ext *) ext_ptr;
  DNR intern[1];


  *intern = *intern_copy;

  H_PUT_32 (abfd, intern->rfd, ext->d_rfd);
  H_PUT_32 (abfd, intern->index, ext->d_index);





}
