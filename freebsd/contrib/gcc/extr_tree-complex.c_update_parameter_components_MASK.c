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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  edge ;
struct TYPE_2__ {int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 scalar_t__ COMPLEX_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENTRY_BLOCK_PTR ; 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
 int /*<<< orphan*/  REALPART_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_1__* cfun ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  edge entry_edge = FUNC7 (ENTRY_BLOCK_PTR);
  tree parm;

  for (parm = FUNC0 (cfun->decl); parm ; parm = FUNC1 (parm))
    {
      tree type = FUNC3 (parm);
      tree ssa_name, r, i;

      if (FUNC2 (type) != COMPLEX_TYPE || !FUNC6 (parm))
	continue;

      type = FUNC3 (type);
      ssa_name = FUNC5 (parm);
      if (!ssa_name)
	continue;

      r = FUNC4 (REALPART_EXPR, type, ssa_name);
      i = FUNC4 (IMAGPART_EXPR, type, ssa_name);
      FUNC8 (entry_edge, ssa_name, r, i);
    }
}