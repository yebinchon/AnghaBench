#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct ecoff_debug_swap {int /*<<< orphan*/  (* swap_ext_out ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  external_ext_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  native; int /*<<< orphan*/  local; } ;
typedef  TYPE_1__ ecoff_symbol_type ;
struct TYPE_5__ {struct ecoff_debug_swap debug_swap; } ;
typedef  int /*<<< orphan*/  EXTR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_ecoff_flavour ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (symbolS *sym, EXTR *ext)
{
  const struct ecoff_debug_swap * const debug_swap
    = &FUNC1 (stdoutput)->debug_swap;
  ecoff_symbol_type *esym;

  FUNC3 (FUNC0 (FUNC5 (sym))
	== bfd_target_ecoff_flavour);
  esym = FUNC2 (FUNC5 (sym));
  esym->local = FALSE;
  esym->native = FUNC6 (debug_swap->external_ext_size);
  (*debug_swap->swap_ext_out) (stdoutput, ext, esym->native);
}