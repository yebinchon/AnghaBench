#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {char* index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TDF_VOPS ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC7 (basic_block bb, basic_block *definition_block, tree ssa_name,
	    tree stmt, bool is_virtual)
{
  if (FUNC6 (ssa_name, is_virtual))
    goto err;

  if (definition_block[FUNC1 (ssa_name)])
    {
      FUNC2 ("SSA_NAME created in two different blocks %i and %i",
	     definition_block[FUNC1 (ssa_name)]->index, bb->index);
      goto err;
    }

  definition_block[FUNC1 (ssa_name)] = bb;

  if (FUNC0 (ssa_name) != stmt)
    {
      FUNC2 ("SSA_NAME_DEF_STMT is wrong");
      FUNC3 (stderr, "Expected definition statement:\n");
      FUNC5 (stderr, FUNC0 (ssa_name), TDF_VOPS);
      FUNC3 (stderr, "\nActual definition statement:\n");
      FUNC5 (stderr, stmt, TDF_VOPS);
      goto err;
    }

  return false;

err:
  FUNC3 (stderr, "while verifying SSA_NAME ");
  FUNC4 (stderr, ssa_name, 0);
  FUNC3 (stderr, " in statement\n");
  FUNC5 (stderr, stmt, TDF_VOPS);

  return true;
}