#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct internal_syment {scalar_t__ n_sclass; scalar_t__ n_value; void* n_scnum; } ;
struct TYPE_8__ {int flags; scalar_t__ value; TYPE_5__* section; } ;
struct TYPE_9__ {TYPE_2__ symbol; } ;
typedef  TYPE_3__ coff_symbol_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_10__ {TYPE_1__* output_section; scalar_t__ output_offset; } ;
struct TYPE_7__ {scalar_t__ vma; scalar_t__ lma; void* target_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BSF_DEBUGGING ; 
 int BSF_DEBUGGING_RELOC ; 
 scalar_t__ C_STATLAB ; 
 void* N_ABS ; 
 void* N_UNDEF ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd,
		    coff_symbol_type *coff_symbol_ptr,
		    struct internal_syment *syment)
{
  /* Normalize the symbol flags.  */
  if (FUNC1 (coff_symbol_ptr->symbol.section))
    {
      /* A common symbol is undefined with a value.  */
      syment->n_scnum = N_UNDEF;
      syment->n_value = coff_symbol_ptr->symbol.value;
    }
  else if ((coff_symbol_ptr->symbol.flags & BSF_DEBUGGING) != 0
	   && (coff_symbol_ptr->symbol.flags & BSF_DEBUGGING_RELOC) == 0)
    {
      syment->n_value = coff_symbol_ptr->symbol.value;
    }
  else if (FUNC2 (coff_symbol_ptr->symbol.section))
    {
      syment->n_scnum = N_UNDEF;
      syment->n_value = 0;
    }
  /* FIXME: Do we need to handle the absolute section here?  */
  else
    {
      if (coff_symbol_ptr->symbol.section)
	{
	  syment->n_scnum =
	    coff_symbol_ptr->symbol.section->output_section->target_index;

	  syment->n_value = (coff_symbol_ptr->symbol.value
			     + coff_symbol_ptr->symbol.section->output_offset);
	  if (! FUNC3 (abfd))
            {
              syment->n_value += (syment->n_sclass == C_STATLAB)
                ? coff_symbol_ptr->symbol.section->output_section->lma
                : coff_symbol_ptr->symbol.section->output_section->vma;
            }
	}
      else
	{
	  FUNC0 (0);
	  /* This can happen, but I don't know why yet (steve@cygnus.com) */
	  syment->n_scnum = N_ABS;
	  syment->n_value = coff_symbol_ptr->symbol.value;
	}
    }
}