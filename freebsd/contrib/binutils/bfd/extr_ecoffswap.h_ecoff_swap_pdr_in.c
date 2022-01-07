
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pdr_ext {int* p_bits1; int* p_bits2; int p_localoff; int p_gp_prologue; int p_cbLineOffset; int p_lnHigh; int p_lnLow; int p_pcreg; int p_framereg; int p_frameoffset; int p_fregoffset; int p_fregmask; int p_iopt; int p_regoffset; int p_regmask; int p_iline; int p_isym; int p_adr; } ;
typedef int bfd ;
struct TYPE_3__ {long isym; long iline; int gp_used; int reg_frame; int prof; int reserved; void* localoff; void* gp_prologue; void* cbLineOffset; void* lnHigh; void* lnLow; void* pcreg; void* framereg; void* frameoffset; void* fregoffset; void* fregmask; void* iopt; void* regoffset; void* regmask; void* adr; } ;
typedef TYPE_1__ PDR ;


 void* ECOFF_GET_OFF (int *,int ) ;
 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;
 void* H_GET_8 (int *,int ) ;
 void* H_GET_S32 (int *,int ) ;
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
 int memset (void*,int ,int) ;

__attribute__((used)) static void
ecoff_swap_pdr_in (bfd *abfd, void * ext_copy, PDR *intern)
{
  struct pdr_ext ext[1];

  *ext = *(struct pdr_ext *) ext_copy;

  memset ((void *) intern, 0, sizeof (*intern));

  intern->adr = ECOFF_GET_OFF (abfd, ext->p_adr);
  intern->isym = H_GET_32 (abfd, ext->p_isym);
  intern->iline = H_GET_32 (abfd, ext->p_iline);
  intern->regmask = H_GET_32 (abfd, ext->p_regmask);
  intern->regoffset = H_GET_S32 (abfd, ext->p_regoffset);
  intern->iopt = H_GET_S32 (abfd, ext->p_iopt);
  intern->fregmask = H_GET_32 (abfd, ext->p_fregmask);
  intern->fregoffset = H_GET_S32 (abfd, ext->p_fregoffset);
  intern->frameoffset = H_GET_S32 (abfd, ext->p_frameoffset);
  intern->framereg = H_GET_16 (abfd, ext->p_framereg);
  intern->pcreg = H_GET_16 (abfd, ext->p_pcreg);
  intern->lnLow = H_GET_32 (abfd, ext->p_lnLow);
  intern->lnHigh = H_GET_32 (abfd, ext->p_lnHigh);
  intern->cbLineOffset = ECOFF_GET_OFF (abfd, ext->p_cbLineOffset);
}
