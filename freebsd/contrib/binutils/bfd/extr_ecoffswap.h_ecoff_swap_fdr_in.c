
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fdr_ext {int* f_bits1; int* f_bits2; int f_cbLine; int f_cbLineOffset; int f_crfd; int f_rfdBase; int f_caux; int f_iauxBase; int f_cpd; int f_ipdFirst; int f_copt; int f_ioptBase; int f_cline; int f_ilineBase; int f_csym; int f_isymBase; int f_cbSs; int f_issBase; int f_rss; int f_adr; } ;
typedef int bfd ;
struct TYPE_3__ {long rss; int lang; int fMerge; int fReadin; int fBigendian; int glevel; void* cbLine; void* cbLineOffset; scalar_t__ reserved; void* crfd; void* rfdBase; void* caux; void* iauxBase; void* cpd; void* ipdFirst; void* copt; void* ioptBase; void* cline; void* ilineBase; void* csym; void* isymBase; void* cbSs; void* issBase; void* adr; } ;
typedef TYPE_1__ FDR ;


 void* ECOFF_GET_OFF (int *,int ) ;
 int FDR_BITS1_FBIGENDIAN_BIG ;
 int FDR_BITS1_FBIGENDIAN_LITTLE ;
 int FDR_BITS1_FMERGE_BIG ;
 int FDR_BITS1_FMERGE_LITTLE ;
 int FDR_BITS1_FREADIN_BIG ;
 int FDR_BITS1_FREADIN_LITTLE ;
 int FDR_BITS1_LANG_BIG ;
 int FDR_BITS1_LANG_LITTLE ;
 int FDR_BITS1_LANG_SH_BIG ;
 int FDR_BITS1_LANG_SH_LITTLE ;
 int FDR_BITS2_GLEVEL_BIG ;
 int FDR_BITS2_GLEVEL_LITTLE ;
 int FDR_BITS2_GLEVEL_SH_BIG ;
 int FDR_BITS2_GLEVEL_SH_LITTLE ;
 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_fdr_in (bfd *abfd, void * ext_copy, FDR *intern)
{
  struct fdr_ext ext[1];

  *ext = *(struct fdr_ext *) ext_copy;

  intern->adr = ECOFF_GET_OFF (abfd, ext->f_adr);
  intern->rss = H_GET_32 (abfd, ext->f_rss);




  intern->issBase = H_GET_32 (abfd, ext->f_issBase);
  intern->cbSs = ECOFF_GET_OFF (abfd, ext->f_cbSs);
  intern->isymBase = H_GET_32 (abfd, ext->f_isymBase);
  intern->csym = H_GET_32 (abfd, ext->f_csym);
  intern->ilineBase = H_GET_32 (abfd, ext->f_ilineBase);
  intern->cline = H_GET_32 (abfd, ext->f_cline);
  intern->ioptBase = H_GET_32 (abfd, ext->f_ioptBase);
  intern->copt = H_GET_32 (abfd, ext->f_copt);
  intern->iauxBase = H_GET_32 (abfd, ext->f_iauxBase);
  intern->caux = H_GET_32 (abfd, ext->f_caux);
  intern->rfdBase = H_GET_32 (abfd, ext->f_rfdBase);
  intern->crfd = H_GET_32 (abfd, ext->f_crfd);


  if (bfd_header_big_endian (abfd))
    {
      intern->lang = ((ext->f_bits1[0] & FDR_BITS1_LANG_BIG)
       >> FDR_BITS1_LANG_SH_BIG);
      intern->fMerge = 0 != (ext->f_bits1[0] & FDR_BITS1_FMERGE_BIG);
      intern->fReadin = 0 != (ext->f_bits1[0] & FDR_BITS1_FREADIN_BIG);
      intern->fBigendian = 0 != (ext->f_bits1[0] & FDR_BITS1_FBIGENDIAN_BIG);
      intern->glevel = ((ext->f_bits2[0] & FDR_BITS2_GLEVEL_BIG)
       >> FDR_BITS2_GLEVEL_SH_BIG);
    }
  else
    {
      intern->lang = ((ext->f_bits1[0] & FDR_BITS1_LANG_LITTLE)
       >> FDR_BITS1_LANG_SH_LITTLE);
      intern->fMerge = 0 != (ext->f_bits1[0] & FDR_BITS1_FMERGE_LITTLE);
      intern->fReadin = 0 != (ext->f_bits1[0] & FDR_BITS1_FREADIN_LITTLE);
      intern->fBigendian = 0 != (ext->f_bits1[0] & FDR_BITS1_FBIGENDIAN_LITTLE);
      intern->glevel = ((ext->f_bits2[0] & FDR_BITS2_GLEVEL_LITTLE)
       >> FDR_BITS2_GLEVEL_SH_LITTLE);
    }
  intern->reserved = 0;

  intern->cbLineOffset = ECOFF_GET_OFF (abfd, ext->f_cbLineOffset);
  intern->cbLine = ECOFF_GET_OFF (abfd, ext->f_cbLine);





}
