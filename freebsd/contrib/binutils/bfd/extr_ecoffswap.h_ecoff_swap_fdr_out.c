
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fdr_ext {int* f_bits1; int* f_bits2; int f_cbLine; int f_cbLineOffset; int f_crfd; int f_rfdBase; int f_caux; int f_iauxBase; int f_cpd; int f_ipdFirst; int f_copt; int f_ioptBase; int f_cline; int f_ilineBase; int f_csym; int f_isymBase; int f_cbSs; int f_issBase; int f_rss; int f_adr; } ;
typedef int bfd ;
struct TYPE_3__ {int lang; int glevel; int cbLine; int cbLineOffset; scalar_t__ fBigendian; scalar_t__ fReadin; scalar_t__ fMerge; int crfd; int rfdBase; int caux; int iauxBase; int cpd; int ipdFirst; int copt; int ioptBase; int cline; int ilineBase; int csym; int isymBase; int cbSs; int issBase; int rss; int adr; } ;
typedef TYPE_1__ FDR ;


 int ECOFF_PUT_OFF (int *,int ,int ) ;
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
 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_fdr_out (bfd *abfd, const FDR *intern_copy, void * ext_ptr)
{
  struct fdr_ext *ext = (struct fdr_ext *) ext_ptr;
  FDR intern[1];


  *intern = *intern_copy;

  ECOFF_PUT_OFF (abfd, intern->adr, ext->f_adr);
  H_PUT_32 (abfd, intern->rss, ext->f_rss);
  H_PUT_32 (abfd, intern->issBase, ext->f_issBase);
  ECOFF_PUT_OFF (abfd, intern->cbSs, ext->f_cbSs);
  H_PUT_32 (abfd, intern->isymBase, ext->f_isymBase);
  H_PUT_32 (abfd, intern->csym, ext->f_csym);
  H_PUT_32 (abfd, intern->ilineBase, ext->f_ilineBase);
  H_PUT_32 (abfd, intern->cline, ext->f_cline);
  H_PUT_32 (abfd, intern->ioptBase, ext->f_ioptBase);
  H_PUT_32 (abfd, intern->copt, ext->f_copt);
  H_PUT_32 (abfd, intern->iauxBase, ext->f_iauxBase);
  H_PUT_32 (abfd, intern->caux, ext->f_caux);
  H_PUT_32 (abfd, intern->rfdBase, ext->f_rfdBase);
  H_PUT_32 (abfd, intern->crfd, ext->f_crfd);


  if (bfd_header_big_endian (abfd))
    {
      ext->f_bits1[0] = (((intern->lang << FDR_BITS1_LANG_SH_BIG)
     & FDR_BITS1_LANG_BIG)
    | (intern->fMerge ? FDR_BITS1_FMERGE_BIG : 0)
    | (intern->fReadin ? FDR_BITS1_FREADIN_BIG : 0)
    | (intern->fBigendian ? FDR_BITS1_FBIGENDIAN_BIG : 0));
      ext->f_bits2[0] = ((intern->glevel << FDR_BITS2_GLEVEL_SH_BIG)
    & FDR_BITS2_GLEVEL_BIG);
      ext->f_bits2[1] = 0;
      ext->f_bits2[2] = 0;
    }
  else
    {
      ext->f_bits1[0] = (((intern->lang << FDR_BITS1_LANG_SH_LITTLE)
     & FDR_BITS1_LANG_LITTLE)
    | (intern->fMerge ? FDR_BITS1_FMERGE_LITTLE : 0)
    | (intern->fReadin ? FDR_BITS1_FREADIN_LITTLE : 0)
    | (intern->fBigendian ? FDR_BITS1_FBIGENDIAN_LITTLE : 0));
      ext->f_bits2[0] = ((intern->glevel << FDR_BITS2_GLEVEL_SH_LITTLE)
    & FDR_BITS2_GLEVEL_LITTLE);
      ext->f_bits2[1] = 0;
      ext->f_bits2[2] = 0;
    }

  ECOFF_PUT_OFF (abfd, intern->cbLineOffset, ext->f_cbLineOffset);
  ECOFF_PUT_OFF (abfd, intern->cbLine, ext->f_cbLine);





}
