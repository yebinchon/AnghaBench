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
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* stmt_ann_t ;
struct TYPE_3__ {int modified; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TV_TREE_OPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (tree stmt)
{
  stmt_ann_t ann = FUNC3 (stmt);

  /* If update_stmt_operands is called before SSA is initialized, do
     nothing.  */
  if (!FUNC4 ())
    return;

  /* The optimizers cannot handle statements that are nothing but a
     _DECL.  This indicates a bug in the gimplifier.  */
  FUNC2 (!FUNC0 (stmt));

  FUNC2 (ann->modified);

  FUNC6 (TV_TREE_OPS);

  FUNC1 (stmt);

  /* Clear the modified bit for STMT.  */
  ann->modified = 0;

  FUNC5 (TV_TREE_OPS);
}