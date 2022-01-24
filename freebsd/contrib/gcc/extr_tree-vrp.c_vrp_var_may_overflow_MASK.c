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
struct loop {int /*<<< orphan*/  num; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parray; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*,scalar_t__) ; 
 TYPE_1__* current_loops ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct loop* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC12 (tree var, tree stmt)
{
  struct loop *l;
  tree chrec, init, step;

  if (current_loops == NULL)
    return true;

  l = FUNC8 (stmt);
  if (l == NULL)
    return true;

  chrec = FUNC6 (l, FUNC2 (l, var));
  if (FUNC1 (chrec) != POLYNOMIAL_CHREC)
    return true;

  init = FUNC5 (chrec, l->num);
  step = FUNC3 (chrec, l->num);

  if (step == NULL_TREE
      || !FUNC7 (step)
      || !FUNC11 (init))
    return true;

  /* If we get here, we know something useful about VAR based on the
     loop information.  If it wraps, it may overflow.  */

  if (FUNC10 (init, step, stmt,
			     current_loops->parray[FUNC0 (chrec)],
			     true))
    return true;

  if (dump_file && (dump_flags & TDF_DETAILS) != 0)
    {
      FUNC9 (dump_file, var, 0);
      FUNC4 (dump_file, ": loop information indicates does not overflow\n");
    }

  return false;
}