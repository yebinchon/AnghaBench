#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* var_ann_t ;
typedef  int /*<<< orphan*/  tree ;
struct ptr_info_def {scalar_t__ name_mem_tag; scalar_t__ value_escapes_p; int /*<<< orphan*/ * pt_vars; scalar_t__ is_dereferenced; } ;
struct TYPE_3__ {int /*<<< orphan*/  symbol_mem_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RESULT_DECL ; 
 struct ptr_info_def* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 size_t num_ssa_names ; 
 int /*<<< orphan*/  FUNC12 (size_t) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (void)
{
  size_t i;
  tree ptr;

  for (i = 1; i < num_ssa_names; i++)
    {
      tree var;
      var_ann_t ann;
      struct ptr_info_def *pi;
 

      ptr = FUNC12 (i);
      if (!ptr)
	continue;

      /* We only care for pointers that are actually referenced in the
	 program.  */
      if (!FUNC0 (FUNC4 (ptr)) || !FUNC5 (ptr))
	continue;

      /* RESULT_DECL is special.  If it's a GIMPLE register, then it
	 is only written-to only once in the return statement.
	 Otherwise, aggregate RESULT_DECLs may be written-to more than
	 once in virtual operands.  */
      var = FUNC2 (ptr);
      if (FUNC3 (var) == RESULT_DECL
	  && FUNC11 (ptr))
	continue;

      pi = FUNC1 (ptr);
      if (pi == NULL)
	continue;

      ann = FUNC13 (var);
      if (pi->is_dereferenced && !pi->name_mem_tag && !ann->symbol_mem_tag)
	{
	  FUNC8 ("dereferenced pointers should have a name or a symbol tag");
	  goto err;
	}

      if (pi->name_mem_tag
	  && (pi->pt_vars == NULL || FUNC6 (pi->pt_vars)))
	{
	  FUNC8 ("pointers with a memory tag, should have points-to sets");
	  goto err;
	}

      if (pi->value_escapes_p
	  && pi->name_mem_tag
	  && !FUNC10 (pi->name_mem_tag))
	{
	  FUNC8 ("pointer escapes but its name tag is not call-clobbered");
	  goto err;
	}
    }

  return;

err:
  FUNC7 (ptr);
  FUNC9 ("verify_flow_sensitive_alias_info failed");
}