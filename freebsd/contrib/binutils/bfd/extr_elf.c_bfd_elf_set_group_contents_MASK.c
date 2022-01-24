#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_17__ {int flags; size_t index; unsigned long target_index; unsigned char* contents; int size; struct TYPE_17__* output_section; } ;
typedef  TYPE_4__ asection ;
struct TYPE_16__ {unsigned long sh_info; unsigned char* contents; } ;
struct TYPE_19__ {unsigned int this_idx; TYPE_3__ this_hdr; } ;
struct TYPE_15__ {unsigned long i; } ;
struct TYPE_18__ {TYPE_2__ udata; } ;
struct TYPE_14__ {unsigned long i; } ;
struct TYPE_13__ {TYPE_1__ udata; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 unsigned int GRP_COMDAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned char*) ; 
 int SEC_GROUP ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LINK_ONCE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_10__* FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_4__*) ; 
 TYPE_6__* FUNC5 (TYPE_4__*) ; 
 TYPE_5__** FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7 (bfd *abfd, asection *sec, void *failedptrarg)
{
  bfd_boolean *failedptr = failedptrarg;
  unsigned long symindx;
  asection *elt, *first;
  unsigned char *loc;
  bfd_boolean gas;

  /* Ignore linker created group section.  See elfNN_ia64_object_p in
     elfxx-ia64.c.  */
  if (((sec->flags & (SEC_GROUP | SEC_LINKER_CREATED)) != SEC_GROUP)
      || *failedptr)
    return;

  symindx = 0;
  if (FUNC3 (sec) != NULL)
    symindx = FUNC3 (sec)->udata.i;

  if (symindx == 0)
    {
      /* If called from the assembler, swap_out_syms will have set up
	 elf_section_syms;  If called for "ld -r", use target_index.  */
      if (FUNC6 (abfd) != NULL)
	symindx = FUNC6 (abfd)[sec->index]->udata.i;
      else
	symindx = sec->target_index;
    }
  FUNC5 (sec)->this_hdr.sh_info = symindx;

  /* The contents won't be allocated for "ld -r" or objcopy.  */
  gas = TRUE;
  if (sec->contents == NULL)
    {
      gas = FALSE;
      sec->contents = FUNC2 (abfd, sec->size);

      /* Arrange for the section to be written out.  */
      FUNC5 (sec)->this_hdr.contents = sec->contents;
      if (sec->contents == NULL)
	{
	  *failedptr = TRUE;
	  return;
	}
    }

  loc = sec->contents + sec->size;

  /* Get the pointer to the first section in the group that gas
     squirreled away here.  objcopy arranges for this to be set to the
     start of the input section group.  */
  first = elt = FUNC4 (sec);

  /* First element is a flag word.  Rest of section is elf section
     indices for all the sections of the group.  Write them backwards
     just to keep the group in the same order as given in .section
     directives, not that it matters.  */
  while (elt != NULL)
    {
      asection *s;
      unsigned int idx;

      loc -= 4;
      s = elt;
      if (!gas)
	s = s->output_section;
      idx = 0;
      if (s != NULL)
	idx = FUNC5 (s)->this_idx;
      FUNC0 (abfd, idx, loc);
      elt = FUNC4 (elt);
      if (elt == first)
	break;
    }

  if ((loc -= 4) != sec->contents)
    FUNC1 ();

  FUNC0 (abfd, sec->flags & SEC_LINK_ONCE ? GRP_COMDAT : 0, loc);
}