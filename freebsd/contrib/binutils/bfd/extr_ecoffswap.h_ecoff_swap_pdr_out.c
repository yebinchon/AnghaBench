
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pdr_ext {int* p_bits1; int* p_bits2; int p_localoff; int p_gp_prologue; int p_cbLineOffset; int p_lnHigh; int p_lnLow; int p_pcreg; int p_framereg; int p_frameoffset; int p_fregoffset; int p_fregmask; int p_iopt; int p_regoffset; int p_regmask; int p_iline; int p_isym; int p_adr; } ;
typedef int bfd ;
struct TYPE_3__ {int reserved; int localoff; scalar_t__ prof; scalar_t__ reg_frame; scalar_t__ gp_used; int gp_prologue; int cbLineOffset; int lnHigh; int lnLow; int pcreg; int framereg; int frameoffset; int fregoffset; int fregmask; int iopt; int regoffset; int regmask; int iline; int isym; int adr; } ;
typedef TYPE_1__ PDR ;


 int ECOFF_PUT_OFF (int *,int ,int ) ;
 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_8 (int *,int ,int ) ;
 int PDR_BITS1_GP_USED_BIG ;
 int PDR_BITS1_GP_USED_LITTLE ;
 int PDR_BITS1_PROF_BIG ;
 int PDR_BITS1_PROF_LITTLE ;
 int PDR_BITS1_REG_FRAME_BIG ;
 int PDR_BITS1_REG_FRAME_LITTLE ;
 int PDR_BITS1_RESERVED_BIG ;
 int PDR_BITS1_RESERVED_LITTLE ;
 int PDR_BITS1_RESERVED_SH_LEFT_BIG ;
 int PDR_BITS1_RESERVED_SH_LITTLE ;
 int PDR_BITS2_RESERVED_BIG ;
 int PDR_BITS2_RESERVED_LITTLE ;
 int PDR_BITS2_RESERVED_SH_BIG ;
 int PDR_BITS2_RESERVED_SH_LEFT_LITTLE ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_pdr_out (bfd *abfd, const PDR *intern_copy, void * ext_ptr)
{
  struct pdr_ext *ext = (struct pdr_ext *) ext_ptr;
  PDR intern[1];


  *intern = *intern_copy;

  ECOFF_PUT_OFF (abfd, intern->adr, ext->p_adr);
  H_PUT_32 (abfd, intern->isym, ext->p_isym);
  H_PUT_32 (abfd, intern->iline, ext->p_iline);
  H_PUT_32 (abfd, intern->regmask, ext->p_regmask);
  H_PUT_32 (abfd, intern->regoffset, ext->p_regoffset);
  H_PUT_32 (abfd, intern->iopt, ext->p_iopt);
  H_PUT_32 (abfd, intern->fregmask, ext->p_fregmask);
  H_PUT_32 (abfd, intern->fregoffset, ext->p_fregoffset);
  H_PUT_32 (abfd, intern->frameoffset, ext->p_frameoffset);
  H_PUT_16 (abfd, intern->framereg, ext->p_framereg);
  H_PUT_16 (abfd, intern->pcreg, ext->p_pcreg);
  H_PUT_32 (abfd, intern->lnLow, ext->p_lnLow);
  H_PUT_32 (abfd, intern->lnHigh, ext->p_lnHigh);
  ECOFF_PUT_OFF (abfd, intern->cbLineOffset, ext->p_cbLineOffset);
}
