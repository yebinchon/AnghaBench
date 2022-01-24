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
typedef  scalar_t__ tree ;
struct sra_elt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sra_elt*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8 (struct sra_elt *elt, tree init, tree *list_p)
{
  bool ret;

  FUNC3 ();
  ret = FUNC1 (elt, init, list_p);
  FUNC2 (NULL);

  /* The replacement can expose previously unreferenced variables.  */
  if (ret && *list_p)
    {
      tree_stmt_iterator i;

      for (i = FUNC6 (*list_p); !FUNC4 (i); FUNC5 (&i))
	FUNC0 (FUNC7 (i));
    }

  return ret;
}