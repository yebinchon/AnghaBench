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
struct internal_scnhdr {scalar_t__ s_nlnno; scalar_t__ s_nreloc; int /*<<< orphan*/  s_align; int /*<<< orphan*/  s_name; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_lnnoptr; int /*<<< orphan*/  s_relptr; int /*<<< orphan*/  s_scnptr; int /*<<< orphan*/  s_size; int /*<<< orphan*/  s_paddr; int /*<<< orphan*/  s_vaddr; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {char* s_name; int /*<<< orphan*/  s_align; int /*<<< orphan*/  s_nreloc; int /*<<< orphan*/  s_nlnno; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_lnnoptr; int /*<<< orphan*/  s_relptr; int /*<<< orphan*/  s_scnptr; int /*<<< orphan*/  s_size; int /*<<< orphan*/  s_paddr; int /*<<< orphan*/  s_vaddr; } ;
typedef  TYPE_1__ SCNHDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_SCNHDR_NLNNO ; 
 scalar_t__ MAX_SCNHDR_NRELOC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_file_truncated ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static unsigned int
FUNC21 (bfd * abfd, void * in, void * out)
{
  struct internal_scnhdr *scnhdr_int = (struct internal_scnhdr *) in;
  SCNHDR *scnhdr_ext = (SCNHDR *) out;
  unsigned int ret = FUNC15 (abfd);

#ifdef COFF_ADJUST_SCNHDR_OUT_PRE
  COFF_ADJUST_SCNHDR_OUT_PRE (abfd, in, out);
#endif
  FUNC18 (scnhdr_ext->s_name, scnhdr_int->s_name, sizeof (scnhdr_int->s_name));

  FUNC12 (abfd, scnhdr_int->s_vaddr, scnhdr_ext->s_vaddr);
  FUNC8 (abfd, scnhdr_int->s_paddr, scnhdr_ext->s_paddr);
  FUNC11 (abfd, scnhdr_int->s_size, scnhdr_ext->s_size);
  FUNC10 (abfd, scnhdr_int->s_scnptr, scnhdr_ext->s_scnptr);
  FUNC9 (abfd, scnhdr_int->s_relptr, scnhdr_ext->s_relptr);
  FUNC5 (abfd, scnhdr_int->s_lnnoptr, scnhdr_ext->s_lnnoptr);
  FUNC4 (abfd, scnhdr_int->s_flags, scnhdr_ext->s_flags);
#if defined(M88)
  H_PUT_32 (abfd, scnhdr_int->s_nlnno, scnhdr_ext->s_nlnno);
  H_PUT_32 (abfd, scnhdr_int->s_nreloc, scnhdr_ext->s_nreloc);
#else
  if (scnhdr_int->s_nlnno <= MAX_SCNHDR_NLNNO)
    FUNC6 (abfd, scnhdr_int->s_nlnno, scnhdr_ext->s_nlnno);
  else
    {
      char buf[sizeof (scnhdr_int->s_name) + 1];

      FUNC18 (buf, scnhdr_int->s_name, sizeof (scnhdr_int->s_name));
      buf[sizeof (scnhdr_int->s_name)] = '\0';
      FUNC14)
	(FUNC13("%s: warning: %s: line number overflow: 0x%lx > 0xffff"),
	 FUNC16 (abfd),
	 buf, scnhdr_int->s_nlnno);
      FUNC6 (abfd, 0xffff, scnhdr_ext->s_nlnno);
    }

  if (scnhdr_int->s_nreloc <= MAX_SCNHDR_NRELOC)
    FUNC7 (abfd, scnhdr_int->s_nreloc, scnhdr_ext->s_nreloc);
  else
    {
      char buf[sizeof (scnhdr_int->s_name) + 1];

      FUNC18 (buf, scnhdr_int->s_name, sizeof (scnhdr_int->s_name));
      buf[sizeof (scnhdr_int->s_name)] = '\0';
      FUNC14) (FUNC13("%s: %s: reloc overflow: 0x%lx > 0xffff"),
			     FUNC16 (abfd),
			     buf, scnhdr_int->s_nreloc);
      FUNC17 (bfd_error_file_truncated);
      FUNC7 (abfd, 0xffff, scnhdr_ext->s_nreloc);
      ret = 0;
    }
#endif

#ifdef I960
  PUT_SCNHDR_ALIGN (abfd, scnhdr_int->s_align, scnhdr_ext->s_align);
#endif
#ifdef COFF_ADJUST_SCNHDR_OUT_POST
  COFF_ADJUST_SCNHDR_OUT_POST (abfd, in, out);
#endif
  return ret;
}