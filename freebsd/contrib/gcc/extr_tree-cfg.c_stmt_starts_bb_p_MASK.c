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
struct TYPE_2__ {int /*<<< orphan*/  num_merged_labels; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_EXPR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_1__ cfg_stats ; 

__attribute__((used)) static inline bool
FUNC4 (tree t, tree prev_t)
{
  if (t == NULL_TREE)
    return false;

  /* LABEL_EXPRs start a new basic block only if the preceding
     statement wasn't a label of the same type.  This prevents the
     creation of consecutive blocks that have nothing but a single
     label.  */
  if (FUNC3 (t) == LABEL_EXPR)
    {
      /* Nonlocal and computed GOTO targets always start a new block.  */
      if (FUNC0 (FUNC2 (t))
	  || FUNC1 (FUNC2 (t)))
	return true;

      if (prev_t && FUNC3 (prev_t) == LABEL_EXPR)
	{
	  if (FUNC0 (FUNC2 (prev_t)))
	    return true;

	  cfg_stats.num_merged_labels++;
	  return false;
	}
      else
	return true;
    }

  return false;
}