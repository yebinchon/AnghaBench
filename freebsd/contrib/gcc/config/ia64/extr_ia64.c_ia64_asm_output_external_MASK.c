#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  (* globalize_label ) (int /*<<< orphan*/ *,char const*) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; scalar_t__ (* binds_local_p ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  TARGET_GNU_AS ; 
 scalar_t__ TARGET_HPUX_LD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__ targetm ; 

void
FUNC8 (FILE *file, tree decl, const char *name)
{
  /* We output the name if and only if TREE_SYMBOL_REFERENCED is
     set in order to avoid putting out names that are never really
     used. */
  if (FUNC3 (FUNC1 (decl)))
    {
      /* maybe_assemble_visibility will return 1 if the assembler
	 visibility directive is outputed.  */
      int need_visibility = ((*targetm.binds_local_p) (decl)
			     && FUNC4 (decl));

      /* GNU as does not need anything here, but the HP linker does
	 need something for external functions.  */
      if ((TARGET_HPUX_LD || !TARGET_GNU_AS)
	  && FUNC2 (decl) == FUNCTION_DECL)
	{
	  FUNC0 (file, name, "function");
	  (*targetm.asm_out.globalize_label) (file, name);
	}
      else if (need_visibility && !TARGET_GNU_AS)
	(*targetm.asm_out.globalize_label) (file, name);
    }
}