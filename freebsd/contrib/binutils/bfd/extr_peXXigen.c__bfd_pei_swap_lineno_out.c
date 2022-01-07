
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_symndx; } ;
struct internal_lineno {int l_lnno; TYPE_1__ l_addr; } ;
struct TYPE_4__ {int l_symndx; } ;
struct external_lineno {TYPE_2__ l_addr; } ;
typedef int bfd ;


 int H_PUT_32 (int *,int ,int ) ;
 unsigned int LINESZ ;
 int PUT_LINENO_LNNO (int *,int ,struct external_lineno*) ;

unsigned int
_bfd_XXi_swap_lineno_out (bfd * abfd, void * inp, void * outp)
{
  struct internal_lineno *in = (struct internal_lineno *) inp;
  struct external_lineno *ext = (struct external_lineno *) outp;
  H_PUT_32 (abfd, in->l_addr.l_symndx, ext->l_addr.l_symndx);

  PUT_LINENO_LNNO (abfd, in->l_lnno, ext);
  return LINESZ;
}
