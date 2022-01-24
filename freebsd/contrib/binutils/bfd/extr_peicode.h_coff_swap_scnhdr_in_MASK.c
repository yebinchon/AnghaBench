#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct internal_scnhdr {int s_vaddr; scalar_t__ s_paddr; scalar_t__ s_size; int s_flags; int s_nlnno; int s_nreloc; int /*<<< orphan*/  s_lnnoptr; int /*<<< orphan*/  s_relptr; int /*<<< orphan*/  s_scnptr; int /*<<< orphan*/  s_name; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {scalar_t__ ImageBase; } ;
struct TYPE_6__ {TYPE_1__ pe_opthdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_nlnno; int /*<<< orphan*/  s_nreloc; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_lnnoptr; int /*<<< orphan*/  s_relptr; int /*<<< orphan*/  s_scnptr; int /*<<< orphan*/  s_size; int /*<<< orphan*/  s_paddr; int /*<<< orphan*/  s_vaddr; int /*<<< orphan*/  s_name; } ;
typedef  TYPE_2__ SCNHDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IMAGE_SCN_CNT_UNINITIALIZED_DATA ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (bfd * abfd, void * ext, void * in)
{
  SCNHDR *scnhdr_ext = (SCNHDR *) ext;
  struct internal_scnhdr *scnhdr_int = (struct internal_scnhdr *) in;

  FUNC9 (scnhdr_int->s_name, scnhdr_ext->s_name, sizeof (scnhdr_int->s_name));

  scnhdr_int->s_vaddr   = FUNC5 (abfd, scnhdr_ext->s_vaddr);
  scnhdr_int->s_paddr   = FUNC1 (abfd, scnhdr_ext->s_paddr);
  scnhdr_int->s_size    = FUNC4 (abfd, scnhdr_ext->s_size);
  scnhdr_int->s_scnptr  = FUNC3 (abfd, scnhdr_ext->s_scnptr);
  scnhdr_int->s_relptr  = FUNC2 (abfd, scnhdr_ext->s_relptr);
  scnhdr_int->s_lnnoptr = FUNC0 (abfd, scnhdr_ext->s_lnnoptr);
  scnhdr_int->s_flags   = FUNC7 (abfd, scnhdr_ext->s_flags);

  /* MS handles overflow of line numbers by carrying into the reloc
     field (it appears).  Since it's supposed to be zero for PE
     *IMAGE* format, that's safe.  This is still a bit iffy.  */
#ifdef COFF_IMAGE_WITH_PE
  scnhdr_int->s_nlnno = (H_GET_16 (abfd, scnhdr_ext->s_nlnno)
			 + (H_GET_16 (abfd, scnhdr_ext->s_nreloc) << 16));
  scnhdr_int->s_nreloc = 0;
#else
  scnhdr_int->s_nreloc = FUNC6 (abfd, scnhdr_ext->s_nreloc);
  scnhdr_int->s_nlnno = FUNC6 (abfd, scnhdr_ext->s_nlnno);
#endif

  if (scnhdr_int->s_vaddr != 0)
    {
      scnhdr_int->s_vaddr += FUNC10 (abfd)->pe_opthdr.ImageBase;
      /* Do not cut upper 32-bits for 64-bit vma.  */
#ifndef COFF_WITH_pex64
      scnhdr_int->s_vaddr &= 0xffffffff;
#endif
    }

#ifndef COFF_NO_HACK_SCNHDR_SIZE
  /* If this section holds uninitialized data and is from an object file
     or from an executable image that has not initialized the field,
     or if the image is an executable file and the physical size is padded,
     use the virtual size (stored in s_paddr) instead.  */
  if (scnhdr_int->s_paddr > 0
      && (((scnhdr_int->s_flags & IMAGE_SCN_CNT_UNINITIALIZED_DATA) != 0
	   && (! FUNC8 (abfd) || scnhdr_int->s_size == 0))
          || (FUNC8 (abfd) && scnhdr_int->s_size > scnhdr_int->s_paddr)))
  /* This code used to set scnhdr_int->s_paddr to 0.  However,
     coff_set_alignment_hook stores s_paddr in virt_size, which
     only works if it correctly holds the virtual size of the
     section.  */
    scnhdr_int->s_size = scnhdr_int->s_paddr;
#endif
}