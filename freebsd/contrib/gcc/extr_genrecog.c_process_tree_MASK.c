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
struct decision_head {int /*<<< orphan*/ * first; } ;
typedef  enum routine_type { ____Placeholder_routine_type } routine_type ;

/* Variables and functions */
 int PEEPHOLE2 ; 
 int /*<<< orphan*/  FUNC0 (struct decision_head*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct decision_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct decision_head*,int /*<<< orphan*/ *) ; 
 scalar_t__ next_subroutine_number ; 
 int /*<<< orphan*/  FUNC3 (struct decision_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct decision_head*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct decision_head*,int) ; 

__attribute__((used)) static void
FUNC6 (struct decision_head *head, enum routine_type subroutine_type)
{
  if (head->first == NULL)
    {
      /* We can elide peephole2_insns, but not recog or split_insns.  */
      if (subroutine_type == PEEPHOLE2)
	return;
    }
  else
    {
      FUNC1 (head);

      next_subroutine_number = 0;
      FUNC0 (head, 1);
      FUNC2 (head, NULL);

      /* We run this after find_afterward, because find_afterward needs
	 the redundant DT_mode tests on predicates to determine whether
	 two tests can both be true or not.  */
      FUNC3(head);

      FUNC5 (head, subroutine_type);
    }

  FUNC4 (head, subroutine_type);
}