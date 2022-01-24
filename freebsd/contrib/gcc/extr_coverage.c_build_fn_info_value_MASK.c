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
typedef  int /*<<< orphan*/  tree ;
struct function_list {int /*<<< orphan*/ * n_ctrs; int /*<<< orphan*/  checksum; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 unsigned int GCOV_COUNTERS ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int prg_ctr_mask ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC8 (const struct function_list *function, tree type)
{
  tree value = NULL_TREE;
  tree fields = FUNC2 (type);
  unsigned ix;
  tree array_value = NULL_TREE;

  /* ident */
  value = FUNC7 (fields, FUNC4 (FUNC5 (),
					     function->ident), value);
  fields = FUNC0 (fields);

  /* checksum */
  value = FUNC7 (fields, FUNC4 (FUNC5 (),
					     function->checksum), value);
  fields = FUNC0 (fields);

  /* counters */
  for (ix = 0; ix != GCOV_COUNTERS; ix++)
    if (prg_ctr_mask & (1 << ix))
      {
	tree counters = FUNC4 (FUNC5 (),
					function->n_ctrs[ix]);

	array_value = FUNC7 (NULL_TREE, counters, array_value);
      }

  /* FIXME: use build_constructor directly.  */
  array_value = FUNC3 (FUNC1 (fields),
					     FUNC6 (array_value));
  value = FUNC7 (fields, array_value, value);

  /* FIXME: use build_constructor directly.  */
  value = FUNC3 (type, FUNC6 (value));

  return value;
}