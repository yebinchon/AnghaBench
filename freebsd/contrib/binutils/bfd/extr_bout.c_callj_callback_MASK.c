#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int dummy; } ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_8__ {int addend; int /*<<< orphan*/ ** sym_ptr_ptr; } ;
typedef  TYPE_2__ arelent ;
struct TYPE_7__ {int value; int flags; int /*<<< orphan*/ * section; } ;
struct TYPE_9__ {int other; TYPE_1__ symbol; } ;
typedef  TYPE_3__ aout_symbol_type ;

/* Variables and functions */
 int BAL ; 
 int BAL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BSF_SECTION_SYM ; 
 int CALL ; 
 int CALLS ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_reloc_ok ; 
 int FUNC7 (TYPE_2__*,struct bfd_link_info*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_reloc_status_type
FUNC9 (bfd *abfd,
		struct bfd_link_info *link_info,
		arelent *reloc_entry,
		void * data,
		unsigned int srcidx,
		unsigned int dstidx,
		asection *input_section,
		bfd_boolean shrinking)
{
  int word = FUNC5 (abfd, (bfd_byte *) data + srcidx);
  asymbol *symbol_in = *(reloc_entry->sym_ptr_ptr);
  aout_symbol_type *symbol = FUNC4 (symbol_in);
  bfd_vma value;

  value = FUNC7 (reloc_entry, link_info, input_section);

  if (FUNC3 (symbol->other))
    /* Call to a system procedure - replace code with system
       procedure number.  */
    word = CALLS | (symbol->other - 1);

  else if (FUNC2 (symbol->other))
    {
      aout_symbol_type *balsym = symbol+1;

      /* The next symbol should be an N_BALNAME.  */
      FUNC0 (FUNC1 (balsym->other));

      /* We are calling a leaf, so replace the call instruction with a
	 bal.  */
      word = BAL | ((word
		     + FUNC8 (balsym->symbol.section)
		     + balsym->symbol.value + reloc_entry->addend
		     - dstidx
		     - FUNC8 (input_section))
		    & BAL_MASK);
    }
  else if ((symbol->symbol.flags & BSF_SECTION_SYM) != 0)
    {
      /* A callj against a symbol in the same section is a fully
         resolved relative call.  We don't need to do anything here.
         If the symbol is not in the same section, I'm not sure what
         to do; fortunately, this case will probably never arise.  */
      FUNC0 (! shrinking);
      FUNC0 (symbol->symbol.section == input_section);
    }
  else
    word = CALL | (((word & BAL_MASK)
		    + value
		    + reloc_entry->addend
		    - (shrinking ? dstidx : 0)
		    - FUNC8 (input_section))
		   & BAL_MASK);

  FUNC6 (abfd, (bfd_vma) word, (bfd_byte *) data + dstidx);
  return bfd_reloc_ok;
}