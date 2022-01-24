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
struct pdr_ext {int* p_bits1; int* p_bits2; int /*<<< orphan*/  p_localoff; int /*<<< orphan*/  p_gp_prologue; int /*<<< orphan*/  p_cbLineOffset; int /*<<< orphan*/  p_lnHigh; int /*<<< orphan*/  p_lnLow; int /*<<< orphan*/  p_pcreg; int /*<<< orphan*/  p_framereg; int /*<<< orphan*/  p_frameoffset; int /*<<< orphan*/  p_fregoffset; int /*<<< orphan*/  p_fregmask; int /*<<< orphan*/  p_iopt; int /*<<< orphan*/  p_regoffset; int /*<<< orphan*/  p_regmask; int /*<<< orphan*/  p_iline; int /*<<< orphan*/  p_isym; int /*<<< orphan*/  p_adr; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int reserved; int /*<<< orphan*/  localoff; scalar_t__ prof; scalar_t__ reg_frame; scalar_t__ gp_used; int /*<<< orphan*/  gp_prologue; int /*<<< orphan*/  cbLineOffset; int /*<<< orphan*/  lnHigh; int /*<<< orphan*/  lnLow; int /*<<< orphan*/  pcreg; int /*<<< orphan*/  framereg; int /*<<< orphan*/  frameoffset; int /*<<< orphan*/  fregoffset; int /*<<< orphan*/  fregmask; int /*<<< orphan*/  iopt; int /*<<< orphan*/  regoffset; int /*<<< orphan*/  regmask; int /*<<< orphan*/  iline; int /*<<< orphan*/  isym; int /*<<< orphan*/  adr; } ;
typedef  TYPE_1__ PDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC7 (bfd *abfd, const PDR *intern_copy, void * ext_ptr)
{
  struct pdr_ext *ext = (struct pdr_ext *) ext_ptr;
  PDR intern[1];

  /* Make it reasonable to do in-place.  */
  *intern = *intern_copy;

  FUNC0 (abfd, intern->adr,          ext->p_adr);
  FUNC2      (abfd, intern->isym,         ext->p_isym);
  FUNC2      (abfd, intern->iline,        ext->p_iline);
  FUNC2      (abfd, intern->regmask,      ext->p_regmask);
  FUNC2      (abfd, intern->regoffset,    ext->p_regoffset);
  FUNC2      (abfd, intern->iopt,         ext->p_iopt);
  FUNC2      (abfd, intern->fregmask,     ext->p_fregmask);
  FUNC2      (abfd, intern->fregoffset,   ext->p_fregoffset);
  FUNC2      (abfd, intern->frameoffset,  ext->p_frameoffset);
  FUNC1      (abfd, intern->framereg,     ext->p_framereg);
  FUNC1      (abfd, intern->pcreg,        ext->p_pcreg);
  FUNC2      (abfd, intern->lnLow,        ext->p_lnLow);
  FUNC2      (abfd, intern->lnHigh,       ext->p_lnHigh);
  FUNC0 (abfd, intern->cbLineOffset, ext->p_cbLineOffset);

#if defined (ECOFF_64) || defined (ECOFF_SIGNED_64)
  H_PUT_8       (abfd, intern->gp_prologue,  ext->p_gp_prologue);

  if (bfd_header_big_endian (abfd))
    {
      ext->p_bits1[0] = ((intern->gp_used ? PDR_BITS1_GP_USED_BIG : 0)
			 | (intern->reg_frame ? PDR_BITS1_REG_FRAME_BIG : 0)
			 | (intern->prof ? PDR_BITS1_PROF_BIG : 0)
			 | ((intern->reserved
			     >> PDR_BITS1_RESERVED_SH_LEFT_BIG)
			    & PDR_BITS1_RESERVED_BIG));
      ext->p_bits2[0] = ((intern->reserved << PDR_BITS2_RESERVED_SH_BIG)
			 & PDR_BITS2_RESERVED_BIG);
    }
  else
    {
      ext->p_bits1[0] = ((intern->gp_used ? PDR_BITS1_GP_USED_LITTLE : 0)
			 | (intern->reg_frame ? PDR_BITS1_REG_FRAME_LITTLE : 0)
			 | (intern->prof ? PDR_BITS1_PROF_LITTLE : 0)
			 | ((intern->reserved << PDR_BITS1_RESERVED_SH_LITTLE)
			    & PDR_BITS1_RESERVED_LITTLE));
      ext->p_bits2[0] = ((intern->reserved >>
			  PDR_BITS2_RESERVED_SH_LEFT_LITTLE)
			 & PDR_BITS2_RESERVED_LITTLE);
    }
  H_PUT_8 (abfd, intern->localoff, ext->p_localoff);
#endif

#ifdef TEST
  if (memcmp ((char *) ext, (char *) intern, sizeof (*intern)) != 0)
    abort ();
#endif
}