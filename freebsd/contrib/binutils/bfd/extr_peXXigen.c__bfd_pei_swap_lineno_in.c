
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int l_symndx; } ;
struct internal_lineno {int l_lnno; TYPE_1__ l_addr; } ;
typedef int bfd ;
struct TYPE_6__ {int l_symndx; } ;
struct TYPE_7__ {TYPE_2__ l_addr; } ;
typedef TYPE_3__ LINENO ;


 int GET_LINENO_LNNO (int *,TYPE_3__*) ;
 int H_GET_32 (int *,int ) ;

void
_bfd_XXi_swap_lineno_in (bfd * abfd, void * ext1, void * in1)
{
  LINENO *ext = (LINENO *) ext1;
  struct internal_lineno *in = (struct internal_lineno *) in1;

  in->l_addr.l_symndx = H_GET_32 (abfd, ext->l_addr.l_symndx);
  in->l_lnno = GET_LINENO_LNNO (abfd, ext);
}
