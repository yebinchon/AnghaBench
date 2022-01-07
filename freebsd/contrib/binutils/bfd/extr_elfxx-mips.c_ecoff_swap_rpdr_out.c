
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpdr_ext {int p_irpss; int p_pcreg; int p_framereg; int p_frameoffset; int p_fregoffset; int p_fregmask; int p_regoffset; int p_regmask; int p_adr; } ;
typedef int bfd ;
struct TYPE_3__ {int irpss; int pcreg; int framereg; int frameoffset; int fregoffset; int fregmask; int regoffset; int regmask; int adr; } ;
typedef TYPE_1__ RPDR ;


 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_S32 (int *,int ,int ) ;

__attribute__((used)) static void
ecoff_swap_rpdr_out (bfd *abfd, const RPDR *in, struct rpdr_ext *ex)
{
  H_PUT_S32 (abfd, in->adr, ex->p_adr);
  H_PUT_32 (abfd, in->regmask, ex->p_regmask);
  H_PUT_32 (abfd, in->regoffset, ex->p_regoffset);
  H_PUT_32 (abfd, in->fregmask, ex->p_fregmask);
  H_PUT_32 (abfd, in->fregoffset, ex->p_fregoffset);
  H_PUT_32 (abfd, in->frameoffset, ex->p_frameoffset);

  H_PUT_16 (abfd, in->framereg, ex->p_framereg);
  H_PUT_16 (abfd, in->pcreg, ex->p_pcreg);

  H_PUT_32 (abfd, in->irpss, ex->p_irpss);
}
