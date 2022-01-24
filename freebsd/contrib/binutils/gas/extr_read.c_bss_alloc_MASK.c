#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
typedef  int subsegT ;
typedef  scalar_t__ segT ;
typedef  scalar_t__ addressT ;
struct TYPE_4__ {int bss; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fr_symbol; } ;

/* Variables and functions */
 scalar_t__ C_EXT ; 
 int /*<<< orphan*/  C_STAT ; 
 scalar_t__ OUTPUT_FLAVOR ; 
 int /*<<< orphan*/  SEC_ALLOC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_ecoff_flavour ; 
 scalar_t__ bfd_target_elf_flavour ; 
 scalar_t__ bss_section ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frag_now ; 
 char* FUNC12 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ now_seg ; 
 int now_subseg ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  rs_org ; 
 TYPE_2__* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  stdoutput ; 
 scalar_t__ FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC19 (symbolS *symbolP, addressT size, int align)
{
  char *pfrag;
  segT current_seg = now_seg;
  subsegT current_subseg = now_subseg;
  segT bss_seg = bss_section;

#if defined (TC_MIPS) || defined (TC_ALPHA)
  if (OUTPUT_FLAVOR == bfd_target_ecoff_flavour
      || OUTPUT_FLAVOR == bfd_target_elf_flavour)
    {
      /* For MIPS and Alpha ECOFF or ELF, small objects are put in .sbss.  */
      if (size <= bfd_get_gp_size (stdoutput))
	{
	  bss_seg = subseg_new (".sbss", 1);
	  seg_info (bss_seg)->bss = 1;
	  if (!bfd_set_section_flags (stdoutput, bss_seg, SEC_ALLOC))
	    as_warn (_("error setting flags for \".sbss\": %s"),
		     bfd_errmsg (bfd_get_error ()));
	}
    }
#endif
  FUNC16 (bss_seg, 1);

  if (align)
    {
      FUNC13 (bss_seg, align);
      FUNC11 (align, 0, 0);
    }

  /* Detach from old frag.  */
  if (FUNC0 (symbolP) == bss_seg)
    FUNC17 (symbolP)->fr_symbol = NULL;

  FUNC18 (symbolP, frag_now);
  pfrag = FUNC12 (rs_org, 1, 1, 0, symbolP, size, NULL);
  *pfrag = 0;

#ifdef S_SET_SIZE
  S_SET_SIZE (symbolP, size);
#endif
  FUNC2 (symbolP, bss_seg);

#ifdef OBJ_COFF
  /* The symbol may already have been created with a preceding
     ".globl" directive -- be careful not to step on storage class
     in that case.  Otherwise, set it to static.  */
  if (S_GET_STORAGE_CLASS (symbolP) != C_EXT)
    S_SET_STORAGE_CLASS (symbolP, C_STAT);
#endif /* OBJ_COFF */

  FUNC16 (current_seg, current_subseg);
}