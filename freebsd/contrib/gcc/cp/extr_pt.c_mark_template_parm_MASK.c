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
struct template_parm_data {int level; int* parms; int* arg_uses_template_parms; size_t current_arg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEMPLATE_PARM_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (tree t, void* data)
{
  int level;
  int idx;
  struct template_parm_data* tpd = (struct template_parm_data*) data;

  if (FUNC4 (t) == TEMPLATE_PARM_INDEX)
    {
      level = FUNC1 (t);
      idx = FUNC0 (t);
    }
  else
    {
      level = FUNC3 (t);
      idx = FUNC2 (t);
    }

  if (level == tpd->level)
    {
      tpd->parms[idx] = 1;
      tpd->arg_uses_template_parms[tpd->current_arg] = 1;
    }

  /* Return zero so that for_each_template_parm will continue the
     traversal of the tree; we want to mark *every* template parm.  */
  return 0;
}