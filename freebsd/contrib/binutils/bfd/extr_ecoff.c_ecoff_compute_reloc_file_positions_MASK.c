#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int file_ptr ;
typedef  int bfd_size_type ;
struct TYPE_9__ {int flags; TYPE_2__* sections; scalar_t__ output_has_begun; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_10__ {int const reloc_count; int rel_filepos; struct TYPE_10__* next; } ;
typedef  TYPE_2__ asection ;
struct TYPE_12__ {int external_reloc_size; int round; } ;
struct TYPE_11__ {int reloc_filepos; int sym_filepos; } ;

/* Variables and functions */
 int D_PAGED ; 
 int EXEC_P ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_7__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_3__* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static bfd_size_type
FUNC4 (bfd *abfd)
{
  const bfd_size_type external_reloc_size =
    FUNC1 (abfd)->external_reloc_size;
  file_ptr reloc_base;
  bfd_size_type reloc_size;
  asection *current;
  file_ptr sym_base;

  if (! abfd->output_has_begun)
    {
      if (! FUNC2 (abfd))
	FUNC0 ();
      abfd->output_has_begun = TRUE;
    }

  reloc_base = FUNC3 (abfd)->reloc_filepos;

  reloc_size = 0;
  for (current = abfd->sections;
       current != NULL;
       current = current->next)
    {
      if (current->reloc_count == 0)
	current->rel_filepos = 0;
      else
	{
	  bfd_size_type relsize;

	  current->rel_filepos = reloc_base;
	  relsize = current->reloc_count * external_reloc_size;
	  reloc_size += relsize;
	  reloc_base += relsize;
	}
    }

  sym_base = FUNC3 (abfd)->reloc_filepos + reloc_size;

  /* At least on Ultrix, the symbol table of an executable file must
     be aligned to a page boundary.  FIXME: Is this true on other
     platforms?  */
  if ((abfd->flags & EXEC_P) != 0
      && (abfd->flags & D_PAGED) != 0)
    sym_base = ((sym_base + FUNC1 (abfd)->round - 1)
		&~ (FUNC1 (abfd)->round - 1));

  FUNC3 (abfd)->sym_filepos = sym_base;

  return reloc_size;
}