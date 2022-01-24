#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSA_OP_DEF ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ num_ssa_names ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (FILE *f, tree *expr)
{
  tree stmt, var;
  int x;
  FUNC2 (f, "\nReplacing Expressions\n");
  for (x = 0; x < (int)num_ssa_names + 1; x++)
    if (expr[x])
      {
        stmt = expr[x];
	var = FUNC0 (stmt, SSA_OP_DEF);
	FUNC3 (var != NULL_TREE);
	FUNC4 (f, var, TDF_SLIM);
	FUNC2 (f, " replace with --> ");
	FUNC4 (f, FUNC1 (stmt, 1), TDF_SLIM);
	FUNC2 (f, "\n");
      }
  FUNC2 (f, "\n");
}