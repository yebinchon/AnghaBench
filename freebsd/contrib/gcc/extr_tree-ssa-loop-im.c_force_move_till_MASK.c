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
struct fmt_data {int /*<<< orphan*/  loop; int /*<<< orphan*/  orig_loop; } ;

/* Variables and functions */
 scalar_t__ ARRAY_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (tree ref, tree *index, void *data)
{
  tree stmt;
  struct fmt_data *fmt_data = data;

  if (FUNC2 (ref) == ARRAY_REF)
    {
      tree step = FUNC3 (ref);
      tree lbound = FUNC4 (ref);

      FUNC5 (step, fmt_data->orig_loop, fmt_data->loop);
      FUNC5 (lbound, fmt_data->orig_loop, fmt_data->loop);
    }

  if (FUNC2 (*index) != SSA_NAME)
    return true;

  stmt = FUNC1 (*index);
  if (FUNC0 (stmt))
    return true;

  FUNC6 (stmt, fmt_data->orig_loop, fmt_data->loop);

  return true;
}