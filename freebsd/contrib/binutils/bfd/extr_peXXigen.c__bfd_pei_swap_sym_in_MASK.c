#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {void* _n_offset; scalar_t__ _n_zeroes; } ;
struct TYPE_18__ {int /*<<< orphan*/  _n_name; TYPE_1__ _n_n; } ;
struct internal_syment {int n_value; scalar_t__ n_scnum; scalar_t__ n_sclass; int /*<<< orphan*/  n_name; void* n_numaux; void* n_type; TYPE_3__ _n; } ;
typedef  int flagword ;
typedef  scalar_t__ bfd_size_type ;
struct TYPE_20__ {TYPE_6__* sections; } ;
typedef  TYPE_5__ bfd ;
struct TYPE_21__ {int target_index; int alignment_power; struct TYPE_21__* next; int /*<<< orphan*/ * userdata; scalar_t__ lineno_count; scalar_t__ line_filepos; scalar_t__ reloc_count; scalar_t__ rel_filepos; scalar_t__ filepos; scalar_t__ size; scalar_t__ lma; scalar_t__ vma; int /*<<< orphan*/  name; } ;
typedef  TYPE_6__ asection ;
struct TYPE_17__ {int /*<<< orphan*/  e_offset; } ;
struct TYPE_19__ {scalar_t__* e_name; TYPE_2__ e; } ;
struct TYPE_22__ {int /*<<< orphan*/  e_numaux; int /*<<< orphan*/  e_sclass; int /*<<< orphan*/  e_type; int /*<<< orphan*/  e_scnum; int /*<<< orphan*/  e_value; TYPE_4__ e; } ;
typedef  TYPE_7__ SYMENT ;

/* Variables and functions */
 scalar_t__ C_SECTION ; 
 scalar_t__ C_STAT ; 
 void* FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int SEC_ALLOC ; 
 int SEC_DATA ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  SYMNMLEN ; 
 char* FUNC3 (TYPE_5__*,scalar_t__) ; 
 TYPE_6__* FUNC4 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10 (bfd * abfd, void * ext1, void * in1)
{
  SYMENT *ext = (SYMENT *) ext1;
  struct internal_syment *in = (struct internal_syment *) in1;

  if (ext->e.e_name[0] == 0)
    {
      in->_n._n_n._n_zeroes = 0;
      in->_n._n_n._n_offset = FUNC1 (abfd, ext->e.e.e_offset);
    }
  else
    FUNC6 (in->_n._n_name, ext->e.e_name, SYMNMLEN);

  in->n_value = FUNC1 (abfd, ext->e_value);
  in->n_scnum = FUNC0 (abfd, ext->e_scnum);

  if (sizeof (ext->e_type) == 2)
    in->n_type = FUNC0 (abfd, ext->e_type);
  else
    in->n_type = FUNC1 (abfd, ext->e_type);

  in->n_sclass = FUNC2 (abfd, ext->e_sclass);
  in->n_numaux = FUNC2 (abfd, ext->e_numaux);

#ifndef STRICT_PE_FORMAT
  /* This is for Gnu-created DLLs.  */

  /* The section symbols for the .idata$ sections have class 0x68
     (C_SECTION), which MS documentation indicates is a section
     symbol.  Unfortunately, the value field in the symbol is simply a
     copy of the .idata section's flags rather than something useful.
     When these symbols are encountered, change the value to 0 so that
     they will be handled somewhat correctly in the bfd code.  */
  if (in->n_sclass == C_SECTION)
    {
      in->n_value = 0x0;

      /* Create synthetic empty sections as needed.  DJ */
      if (in->n_scnum == 0)
	{
	  asection *sec;

	  for (sec = abfd->sections; sec; sec = sec->next)
	    {
	      if (FUNC7 (sec->name, in->n_name) == 0)
		{
		  in->n_scnum = sec->target_index;
		  break;
		}
	    }
	}

      if (in->n_scnum == 0)
	{
	  int unused_section_number = 0;
	  asection *sec;
	  char *name;
	  flagword flags;

	  for (sec = abfd->sections; sec; sec = sec->next)
	    if (unused_section_number <= sec->target_index)
	      unused_section_number = sec->target_index + 1;

	  name = FUNC3 (abfd, (bfd_size_type) FUNC9 (in->n_name) + 10);
	  if (name == NULL)
	    return;
	  FUNC8 (name, in->n_name);
	  flags = SEC_HAS_CONTENTS | SEC_ALLOC | SEC_DATA | SEC_LOAD;
	  sec = FUNC4 (abfd, name, flags);

	  sec->vma = 0;
	  sec->lma = 0;
	  sec->size = 0;
	  sec->filepos = 0;
	  sec->rel_filepos = 0;
	  sec->reloc_count = 0;
	  sec->line_filepos = 0;
	  sec->lineno_count = 0;
	  sec->userdata = NULL;
	  sec->next = NULL;
	  sec->alignment_power = 2;

	  sec->target_index = unused_section_number;

	  in->n_scnum = unused_section_number;
	}
      in->n_sclass = C_STAT;
    }
#endif

#ifdef coff_swap_sym_in_hook
  /* This won't work in peigen.c, but since it's for PPC PE, it's not
     worth fixing.  */
  coff_swap_sym_in_hook (abfd, ext1, in1);
#endif
}