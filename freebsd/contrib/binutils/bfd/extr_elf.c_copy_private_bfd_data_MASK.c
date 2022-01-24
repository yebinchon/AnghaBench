#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ bfd_boolean ;
struct TYPE_19__ {scalar_t__ xvec; TYPE_2__* sections; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_20__ {scalar_t__ segment_mark; scalar_t__ flags; scalar_t__ lma; scalar_t__ vma; scalar_t__ size; scalar_t__ rawsize; scalar_t__ alignment_power; struct TYPE_20__* next; struct TYPE_20__* output_section; } ;
typedef  TYPE_2__ asection ;
struct TYPE_23__ {int /*<<< orphan*/  this_hdr; } ;
struct TYPE_22__ {TYPE_3__* phdr; } ;
struct TYPE_21__ {scalar_t__ p_paddr; scalar_t__ p_memsz; scalar_t__ p_type; } ;
struct TYPE_18__ {unsigned int e_phnum; } ;
typedef  int /*<<< orphan*/  Elf_Internal_Shdr ;
typedef  TYPE_3__ Elf_Internal_Phdr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ PT_DYNAMIC ; 
 scalar_t__ PT_INTERP ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_10__* FUNC3 (TYPE_1__*) ; 
 TYPE_8__* FUNC4 (TYPE_2__*) ; 
 TYPE_6__* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (bfd *ibfd, bfd *obfd)
{
  if (FUNC1 (ibfd) != bfd_target_elf_flavour
      || FUNC1 (obfd) != bfd_target_elf_flavour)
    return TRUE;

  if (FUNC5 (ibfd)->phdr == NULL)
    return TRUE;

  if (ibfd->xvec == obfd->xvec)
    {
      /* Check to see if any sections in the input BFD
	 covered by ELF program header have changed.  */
      Elf_Internal_Phdr *segment;
      asection *section, *osec;
      unsigned int i, num_segments;
      Elf_Internal_Shdr *this_hdr;

      /* Initialize the segment mark field.  */
      for (section = obfd->sections; section != NULL;
	   section = section->next)
	section->segment_mark = FALSE;

      num_segments = FUNC3 (ibfd)->e_phnum;
      for (i = 0, segment = FUNC5 (ibfd)->phdr;
	   i < num_segments;
	   i++, segment++)
	{
	  /* PR binutils/3535.  The Solaris linker always sets the p_paddr
	     and p_memsz fields of special segments (DYNAMIC, INTERP) to 0
	     which severly confuses things, so always regenerate the segment
	     map in this case.  */
	  if (segment->p_paddr == 0
	      && segment->p_memsz == 0
	      && (segment->p_type == PT_INTERP || segment->p_type == PT_DYNAMIC))
	    goto rewrite;

	  for (section = ibfd->sections;
	       section != NULL; section = section->next)
	    {
	      /* We mark the output section so that we know it comes
		 from the input BFD.  */
	      osec = section->output_section;
	      if (osec)
		osec->segment_mark = TRUE;

	      /* Check if this section is covered by the segment.  */
	      this_hdr = &(FUNC4(section)->this_hdr);
	      if (FUNC0 (this_hdr, segment))
		{
		  /* FIXME: Check if its output section is changed or
		     removed.  What else do we need to check?  */
		  if (osec == NULL
		      || section->flags != osec->flags
		      || section->lma != osec->lma
		      || section->vma != osec->vma
		      || section->size != osec->size
		      || section->rawsize != osec->rawsize
		      || section->alignment_power != osec->alignment_power)
		    goto rewrite;
		}
	    }
	}

      /* Check to see if any output section do not come from the
	 input BFD.  */
      for (section = obfd->sections; section != NULL;
	   section = section->next)
	{
	  if (section->segment_mark == FALSE)
	    goto rewrite;
	  else
	    section->segment_mark = FALSE;
	}

      return FUNC2 (ibfd, obfd);
    }

rewrite:
  return FUNC6 (ibfd, obfd);
}