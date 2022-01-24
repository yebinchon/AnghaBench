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
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  edge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STATEMENT_LIST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool 
FUNC8 (edge e1, edge e2)
{
  tree t1 = FUNC0 (e1);
  tree t2 = FUNC0 (e2);
  tree_stmt_iterator tsi1, tsi2;

  FUNC2 (FUNC1 (t1) == STATEMENT_LIST);
  FUNC2 (FUNC1 (t2) == STATEMENT_LIST);

  for (tsi1 = FUNC6 (t1), tsi2 = FUNC6 (t2);
       !FUNC4 (tsi1) && !FUNC4 (tsi2); 
       FUNC5 (&tsi1), FUNC5 (&tsi2))
    {
      if (!FUNC3 (FUNC7 (tsi1), FUNC7 (tsi2)))
        break;
    }

  if (!FUNC4 (tsi1) || ! FUNC4 (tsi2))
    return false;

  return true;
}