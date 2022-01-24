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
struct objdump_disasm_info {int /*<<< orphan*/  sec; int /*<<< orphan*/  abfd; TYPE_1__* reloc; } ;
struct disassemble_info {scalar_t__ application_data; int /*<<< orphan*/  stream; int /*<<< orphan*/  (* fprintf_func ) (int /*<<< orphan*/ ,char*) ;} ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_2__ {int /*<<< orphan*/ ** sym_ptr_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct disassemble_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct disassemble_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct disassemble_info*,int /*<<< orphan*/ ) ; 
 int sorted_symcount ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7 (bfd_vma vma,
		    struct disassemble_info *info,
		    bfd_boolean skip_zeroes)
{
  struct objdump_disasm_info *aux;
  asymbol *sym = NULL; /* Initialize to avoid compiler warning.  */
  bfd_boolean skip_find = FALSE;

  if (sorted_symcount < 1)
    {
      (*info->fprintf_func) (info->stream, "0x");
      FUNC5 (vma, info, skip_zeroes);
      return;
    }

  aux = (struct objdump_disasm_info *) info->application_data;

  if (aux->reloc != NULL
      && aux->reloc->sym_ptr_ptr != NULL
      && * aux->reloc->sym_ptr_ptr != NULL)
    {
      sym = * aux->reloc->sym_ptr_ptr;

      /* Adjust the vma to the reloc.  */
      vma += FUNC0 (sym);

      if (FUNC2 (FUNC1 (sym)))
	skip_find = TRUE;
    }

  if (!skip_find)
    sym = FUNC3 (vma, info, NULL);

  FUNC4 (aux->abfd, aux->sec, sym, vma, info,
			       skip_zeroes);
}