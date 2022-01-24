#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fdr_ext {int* f_bits1; int* f_bits2; int /*<<< orphan*/  f_cbLine; int /*<<< orphan*/  f_cbLineOffset; int /*<<< orphan*/  f_crfd; int /*<<< orphan*/  f_rfdBase; int /*<<< orphan*/  f_caux; int /*<<< orphan*/  f_iauxBase; int /*<<< orphan*/  f_cpd; int /*<<< orphan*/  f_ipdFirst; int /*<<< orphan*/  f_copt; int /*<<< orphan*/  f_ioptBase; int /*<<< orphan*/  f_cline; int /*<<< orphan*/  f_ilineBase; int /*<<< orphan*/  f_csym; int /*<<< orphan*/  f_isymBase; int /*<<< orphan*/  f_cbSs; int /*<<< orphan*/  f_issBase; int /*<<< orphan*/  f_rss; int /*<<< orphan*/  f_adr; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int lang; int glevel; int /*<<< orphan*/  cbLine; int /*<<< orphan*/  cbLineOffset; scalar_t__ fBigendian; scalar_t__ fReadin; scalar_t__ fMerge; int /*<<< orphan*/  crfd; int /*<<< orphan*/  rfdBase; int /*<<< orphan*/  caux; int /*<<< orphan*/  iauxBase; int /*<<< orphan*/  cpd; int /*<<< orphan*/  ipdFirst; int /*<<< orphan*/  copt; int /*<<< orphan*/  ioptBase; int /*<<< orphan*/  cline; int /*<<< orphan*/  ilineBase; int /*<<< orphan*/  csym; int /*<<< orphan*/  isymBase; int /*<<< orphan*/  cbSs; int /*<<< orphan*/  issBase; int /*<<< orphan*/  rss; int /*<<< orphan*/  adr; } ;
typedef  TYPE_1__ FDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC6 (bfd *abfd, const FDR *intern_copy, void * ext_ptr)
{
  struct fdr_ext *ext = (struct fdr_ext *) ext_ptr;
  FDR intern[1];

  /* Make it reasonable to do in-place.  */
  *intern = *intern_copy;

  FUNC0 (abfd, intern->adr,       ext->f_adr);
  FUNC2      (abfd, intern->rss,       ext->f_rss);
  FUNC2      (abfd, intern->issBase,   ext->f_issBase);
  FUNC0 (abfd, intern->cbSs,      ext->f_cbSs);
  FUNC2      (abfd, intern->isymBase,  ext->f_isymBase);
  FUNC2      (abfd, intern->csym,      ext->f_csym);
  FUNC2      (abfd, intern->ilineBase, ext->f_ilineBase);
  FUNC2      (abfd, intern->cline,     ext->f_cline);
  FUNC2      (abfd, intern->ioptBase,  ext->f_ioptBase);
  FUNC2      (abfd, intern->copt,      ext->f_copt);
#if defined (ECOFF_32) || defined (ECOFF_SIGNED_32)
  H_PUT_16      (abfd, intern->ipdFirst,  ext->f_ipdFirst);
  H_PUT_16      (abfd, intern->cpd,       ext->f_cpd);
#endif
#if defined (ECOFF_64) || defined (ECOFF_SIGNED_64)
  H_PUT_32      (abfd, intern->ipdFirst,  ext->f_ipdFirst);
  H_PUT_32      (abfd, intern->cpd,       ext->f_cpd);
#endif
  FUNC2      (abfd, intern->iauxBase,  ext->f_iauxBase);
  FUNC2      (abfd, intern->caux,      ext->f_caux);
  FUNC2      (abfd, intern->rfdBase,   ext->f_rfdBase);
  FUNC2      (abfd, intern->crfd,      ext->f_crfd);

  /* Now the fun stuff...  */
  if (FUNC4 (abfd))
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

  FUNC0 (abfd, intern->cbLineOffset, ext->f_cbLineOffset);
  FUNC0 (abfd, intern->cbLine, ext->f_cbLine);

#ifdef TEST
  if (memcmp ((char *) ext, (char *) intern, sizeof (*intern)) != 0)
    abort ();
#endif
}