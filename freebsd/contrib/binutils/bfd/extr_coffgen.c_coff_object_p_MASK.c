#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct internal_filehdr {scalar_t__ f_opthdr; unsigned int f_nscns; } ;
struct internal_aouthdr {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_target ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (void*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct internal_filehdr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,struct internal_filehdr*) ; 
 scalar_t__ bfd_error_system_call ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC10 (int /*<<< orphan*/ *,unsigned int,struct internal_filehdr*,struct internal_aouthdr*) ; 

const bfd_target *
FUNC11 (bfd *abfd)
{
  bfd_size_type filhsz;
  bfd_size_type aoutsz;
  unsigned int nscns;
  void * filehdr;
  struct internal_filehdr internal_f;
  struct internal_aouthdr internal_a;

  /* Figure out how much to read.  */
  filhsz = FUNC4 (abfd);
  aoutsz = FUNC2 (abfd);

  filehdr = FUNC0 (abfd, filhsz);
  if (filehdr == NULL)
    return NULL;
  if (FUNC1 (filehdr, filhsz, abfd) != filhsz)
    {
      if (FUNC7 () != bfd_error_system_call)
	FUNC9 (bfd_error_wrong_format);
      FUNC8 (abfd, filehdr);
      return NULL;
    }
  FUNC6 (abfd, filehdr, &internal_f);
  FUNC8 (abfd, filehdr);

  /* The XCOFF format has two sizes for the f_opthdr.  SMALL_AOUTSZ
     (less than aoutsz) used in object files and AOUTSZ (equal to
     aoutsz) in executables.  The bfd_coff_swap_aouthdr_in function
     expects this header to be aoutsz bytes in length, so we use that
     value in the call to bfd_alloc below.  But we must be careful to
     only read in f_opthdr bytes in the call to bfd_bread.  We should
     also attempt to catch corrupt or non-COFF binaries with a strange
     value for f_opthdr.  */
  if (! FUNC3 (abfd, &internal_f)
      || internal_f.f_opthdr > aoutsz)
    {
      FUNC9 (bfd_error_wrong_format);
      return NULL;
    }
  nscns = internal_f.f_nscns;

  if (internal_f.f_opthdr)
    {
      void * opthdr;

      opthdr = FUNC0 (abfd, aoutsz);
      if (opthdr == NULL)
	return NULL;
      if (FUNC1 (opthdr, (bfd_size_type) internal_f.f_opthdr, abfd)
	  != internal_f.f_opthdr)
	{
	  FUNC8 (abfd, opthdr);
	  return NULL;
	}
      FUNC5 (abfd, opthdr, (void *) &internal_a);
      FUNC8 (abfd, opthdr);
    }

  return FUNC10 (abfd, nscns, &internal_f,
			     (internal_f.f_opthdr != 0
			      ? &internal_a
			      : (struct internal_aouthdr *) NULL));
}