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
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_reloc_status_type ;
typedef  void bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_8__ {scalar_t__ addend; int /*<<< orphan*/ ** sym_ptr_ptr; } ;
typedef  TYPE_2__ arelent ;
struct TYPE_7__ {int /*<<< orphan*/  section; scalar_t__ value; } ;
struct TYPE_9__ {TYPE_1__ symbol; int /*<<< orphan*/  other; } ;
typedef  TYPE_3__ aout_symbol_type ;

/* Variables and functions */
 int BALX ; 
 int BALX_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,void*) ; 
 int /*<<< orphan*/  bfd_reloc_ok ; 
 scalar_t__ FUNC6 (TYPE_2__*,struct bfd_link_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_reloc_status_type
FUNC8 (bfd *abfd,
		 struct bfd_link_info *link_info,
		 arelent *reloc_entry,
		 void * src,
		 void * dst,
		 asection *input_section)
{
  int word = FUNC4 (abfd, src);
  asymbol *symbol_in = *(reloc_entry->sym_ptr_ptr);
  aout_symbol_type *symbol = FUNC3 (symbol_in);
  bfd_vma value;

  value = FUNC6 (reloc_entry, link_info, input_section);

  if (FUNC2 (symbol->other))
    {
      aout_symbol_type *balsym = symbol+1;
      int inst = FUNC4 (abfd, (bfd_byte *) src-4);

      /* The next symbol should be an N_BALNAME.  */
      FUNC0 (FUNC1 (balsym->other));
      inst &= BALX_MASK;
      inst |= BALX;
      FUNC5 (abfd, (bfd_vma) inst, (bfd_byte *) dst-4);
      symbol = balsym;
      value = (symbol->symbol.value
	       + FUNC7 (symbol->symbol.section));
    }

  word += value + reloc_entry->addend;

  FUNC5 (abfd, (bfd_vma) word, dst);
  return bfd_reloc_ok;
}