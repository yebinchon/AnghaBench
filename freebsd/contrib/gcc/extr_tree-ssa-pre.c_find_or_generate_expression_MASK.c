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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct TYPE_3__ {int /*<<< orphan*/ * expr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC6 (basic_block block, tree expr, tree stmts)
{
  tree genop = FUNC2 (FUNC0 (block), expr);

  /* If it's still NULL, it must be a complex expression, so generate
     it recursively.  */
  if (genop == NULL)
    {
      genop = FUNC1 (expr)->head->expr;

      FUNC5 (FUNC3 (genop));
      genop = FUNC4 (block, genop, stmts);
    }
  return genop;
}