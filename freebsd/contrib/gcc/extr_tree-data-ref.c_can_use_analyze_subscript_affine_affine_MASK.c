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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*) ; 

__attribute__((used)) static bool
FUNC11 (tree *chrec_a, tree *chrec_b)
{
  tree diff, type, left_a, left_b, right_b;

  if (FUNC5 (FUNC1 (*chrec_a))
      || FUNC5 (FUNC1 (*chrec_b)))
    /* FIXME: For the moment not handled.  Might be refined later.  */
    return false;

  type = FUNC8 (*chrec_a);
  left_a = FUNC0 (*chrec_a);
  left_b = FUNC6 (type, FUNC0 (*chrec_b), NULL_TREE);
  diff = FUNC7 (type, left_a, left_b);

  if (!FUNC9 (diff))
    return false;

  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC10 (dump_file, "can_use_subscript_aff_aff_for_symbolic \n");

  *chrec_a = FUNC4 (FUNC2 (*chrec_a), 
				     diff, FUNC1 (*chrec_a));
  right_b = FUNC6 (type, FUNC1 (*chrec_b), NULL_TREE);
  *chrec_b = FUNC4 (FUNC2 (*chrec_b),
				     FUNC3 (type, 0),
				     right_b);
  return true;
}