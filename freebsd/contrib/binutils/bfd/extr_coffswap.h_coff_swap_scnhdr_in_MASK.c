#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct internal_scnhdr {int /*<<< orphan*/  s_align; int /*<<< orphan*/  s_nlnno; int /*<<< orphan*/  s_nreloc; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_lnnoptr; int /*<<< orphan*/  s_relptr; int /*<<< orphan*/  s_scnptr; int /*<<< orphan*/  s_size; int /*<<< orphan*/  s_paddr; int /*<<< orphan*/  s_vaddr; int /*<<< orphan*/  s_name; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  s_align; int /*<<< orphan*/  s_nlnno; int /*<<< orphan*/  s_nreloc; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_lnnoptr; int /*<<< orphan*/  s_relptr; int /*<<< orphan*/  s_scnptr; int /*<<< orphan*/  s_size; int /*<<< orphan*/  s_paddr; int /*<<< orphan*/  s_vaddr; int /*<<< orphan*/  s_name; } ;
typedef  TYPE_1__ SCNHDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC13 (bfd * abfd, void * ext, void * in)
{
  SCNHDR *scnhdr_ext = (SCNHDR *) ext;
  struct internal_scnhdr *scnhdr_int = (struct internal_scnhdr *) in;

#ifdef COFF_ADJUST_SCNHDR_IN_PRE
  COFF_ADJUST_SCNHDR_IN_PRE (abfd, ext, in);
#endif
  FUNC12 (scnhdr_int->s_name, scnhdr_ext->s_name, sizeof (scnhdr_int->s_name));

  scnhdr_int->s_vaddr = FUNC11 (abfd, scnhdr_ext->s_vaddr);
  scnhdr_int->s_paddr = FUNC7 (abfd, scnhdr_ext->s_paddr);
  scnhdr_int->s_size = FUNC10 (abfd, scnhdr_ext->s_size);

  scnhdr_int->s_scnptr = FUNC9 (abfd, scnhdr_ext->s_scnptr);
  scnhdr_int->s_relptr = FUNC8 (abfd, scnhdr_ext->s_relptr);
  scnhdr_int->s_lnnoptr = FUNC4 (abfd, scnhdr_ext->s_lnnoptr);
  scnhdr_int->s_flags = FUNC3 (abfd, scnhdr_ext->s_flags);
  scnhdr_int->s_nreloc = FUNC6 (abfd, scnhdr_ext->s_nreloc);
  scnhdr_int->s_nlnno = FUNC5 (abfd, scnhdr_ext->s_nlnno);
#ifdef I960
  scnhdr_int->s_align = GET_SCNHDR_ALIGN (abfd, scnhdr_ext->s_align);
#endif
#ifdef COFF_ADJUST_SCNHDR_IN_POST
  COFF_ADJUST_SCNHDR_IN_POST (abfd, ext, in);
#endif
}