#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct internal_extra_pe_aouthdr {scalar_t__ Subsystem; } ;
struct external_PEI_IMAGE_hdr {struct external_PEI_IMAGE_hdr* nt_signature; struct external_PEI_IMAGE_hdr* e_lfanew; int /*<<< orphan*/  e_magic; } ;
struct external_PEI_DOS_hdr {struct external_PEI_DOS_hdr* nt_signature; struct external_PEI_DOS_hdr* e_lfanew; int /*<<< orphan*/  e_magic; } ;
struct TYPE_21__ {struct internal_extra_pe_aouthdr pe_opthdr; } ;
typedef  TYPE_1__ pe_data_type ;
typedef  int /*<<< orphan*/  image_hdr ;
typedef  int file_ptr ;
typedef  enum arch_type { ____Placeholder_arch_type } arch_type ;
typedef  int /*<<< orphan*/  dos_hdr ;
struct TYPE_22__ {scalar_t__ flavour; } ;
typedef  TYPE_2__ bfd_target ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  struct external_PEI_IMAGE_hdr bfd_byte ;
typedef  int bfd_boolean ;
struct TYPE_23__ {TYPE_2__ const* const xvec; } ;
typedef  TYPE_3__ bfd ;

/* Variables and functions */
 scalar_t__ DOSMAGIC ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,struct external_PEI_IMAGE_hdr*) ; 
 scalar_t__ IMAGE_SUBSYSTEM_EFI_APPLICATION ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (struct external_PEI_IMAGE_hdr*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ bfd_error_system_call ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_coff_flavour ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const* const) ; 
 scalar_t__ FUNC7 (TYPE_2__ const* const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__ const* const) ; 
 scalar_t__ FUNC9 (TYPE_2__ const* const) ; 
 TYPE_2__** bfd_target_vector ; 
 TYPE_2__* FUNC10 (TYPE_3__*) ; 
 TYPE_2__ const* FUNC11 (TYPE_3__*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (TYPE_3__*) ; 

__attribute__((used)) static const bfd_target *
FUNC14 (bfd * abfd)
{
  bfd_byte buffer[4];
  struct external_PEI_DOS_hdr dos_hdr;
  struct external_PEI_IMAGE_hdr image_hdr;
  file_ptr offset;
  const bfd_target *target;

  /* Detect if this a Microsoft Import Library Format element.  */
  if (FUNC4 (abfd, (file_ptr) 0, SEEK_SET) != 0
      || FUNC2 (buffer, (bfd_size_type) 4, abfd) != 4)
    {
      if (FUNC3 () != bfd_error_system_call)
	FUNC5 (bfd_error_wrong_format);
      return NULL;
    }

  if (FUNC1 (abfd, buffer) == 0xffff0000)
    return FUNC11 (abfd);

  if (FUNC4 (abfd, (file_ptr) 0, SEEK_SET) != 0
      || FUNC2 (&dos_hdr, (bfd_size_type) sizeof (dos_hdr), abfd)
	 != sizeof (dos_hdr))
    {
      if (FUNC3 () != bfd_error_system_call)
	FUNC5 (bfd_error_wrong_format);
      return NULL;
    }

  /* There are really two magic numbers involved; the magic number
     that says this is a NT executable (PEI) and the magic number that
     determines the architecture.  The former is DOSMAGIC, stored in
     the e_magic field.  The latter is stored in the f_magic field.
     If the NT magic number isn't valid, the architecture magic number
     could be mimicked by some other field (specifically, the number
     of relocs in section 3).  Since this routine can only be called
     correctly for a PEI file, check the e_magic number here, and, if
     it doesn't match, clobber the f_magic number so that we don't get
     a false match.  */
  if (FUNC0 (abfd, dos_hdr.e_magic) != DOSMAGIC)
    {
      FUNC5 (bfd_error_wrong_format);
      return NULL;
    }

  offset = FUNC1 (abfd, dos_hdr.e_lfanew);
  if (FUNC4 (abfd, offset, SEEK_SET) != 0
      || (FUNC2 (&image_hdr, (bfd_size_type) sizeof (image_hdr), abfd)
	  != sizeof (image_hdr)))
    {
      if (FUNC3 () != bfd_error_system_call)
	FUNC5 (bfd_error_wrong_format);
      return NULL;
    }

  if (FUNC1 (abfd, image_hdr.nt_signature) != 0x4550)
    {
      FUNC5 (bfd_error_wrong_format);
      return NULL;
    }

  /* Here is the hack.  coff_object_p wants to read filhsz bytes to
     pick up the COFF header for PE, see "struct external_PEI_filehdr"
     in include/coff/pe.h.  We adjust so that that will work. */
  if (FUNC4 (abfd, (file_ptr) (offset - sizeof (dos_hdr)), SEEK_SET) != 0)
    {
      if (FUNC3 () != bfd_error_system_call)
	FUNC5 (bfd_error_wrong_format);
      return NULL;
    }

  target = FUNC10 (abfd);
  if (target)
    {
      pe_data_type *pe = FUNC13 (abfd);
      struct internal_extra_pe_aouthdr *i = &pe->pe_opthdr;
      bfd_boolean efi = i->Subsystem == IMAGE_SUBSYSTEM_EFI_APPLICATION;
      enum arch_type arch;
      const bfd_target * const *target_ptr;

      /* Get the machine.  */
      if (FUNC7 (abfd->xvec))
	arch = FUNC12 (FUNC6 (abfd->xvec));
      else
	arch = FUNC12 (FUNC8 (abfd->xvec));

      for (target_ptr = bfd_target_vector; *target_ptr != NULL;
	   target_ptr++)
	{
	  if (*target_ptr == target
	      || (*target_ptr)->flavour != bfd_target_coff_flavour)
	    continue;

	  if (FUNC7 (*target_ptr))
	    {
	      /* Skip incompatible arch.  */
	      if (FUNC12 (FUNC6 (*target_ptr)) != arch)
		continue;

		if (efi)
		  {
		    /* TARGET_PTR is an EFI backend.  Don't match
		       TARGET with a EFI file.  */
		    FUNC5 (bfd_error_wrong_format);
		    return NULL;
		  }
	    }
	  else if (FUNC9 (*target_ptr))
	    {
	      /* Skip incompatible arch.  */
	      if (FUNC12 (FUNC8 (*target_ptr)) != arch)
		continue;

		if (!efi)
		  {
		    /* TARGET_PTR is a PE backend.  Don't match
		       TARGET with a PE file.  */
		    FUNC5 (bfd_error_wrong_format);
		    return NULL;
		  }
	    }
	}
    }

  return target;
}