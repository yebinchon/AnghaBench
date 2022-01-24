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
struct TYPE_3__ {int vtable_method; } ;
struct TYPE_4__ {TYPE_1__ local; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TARGET_VTABLE_USES_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 

tree
FUNC11 (tree ref, tree known_type)
{
  HOST_WIDE_INT index = FUNC10 (FUNC3 (ref), 1);
  HOST_WIDE_INT i = 0;
  tree v = FUNC0 (FUNC5 (known_type));
  tree fndecl;

  while (i != index)
    {
      i += (TARGET_VTABLE_USES_DESCRIPTORS
	    ? TARGET_VTABLE_USES_DESCRIPTORS : 1);
      v = FUNC4 (v);
    }

  fndecl = FUNC1 (v);

#ifdef ENABLE_CHECKING
  gcc_assert (tree_int_cst_equal (OBJ_TYPE_REF_TOKEN (ref),
				  DECL_VINDEX (fndecl)));
#endif

  FUNC7 (fndecl)->local.vtable_method = true;

  return FUNC6 (fndecl);
}