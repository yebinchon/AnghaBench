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
struct lwp_info {struct lwp_info* next; int /*<<< orphan*/  signalled; int /*<<< orphan*/  stopped; } ;

/* Variables and functions */
 struct lwp_info* lwp_list ; 
 int /*<<< orphan*/  FUNC0 (struct lwp_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lwp_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lwp_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lwp_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4 (struct lwp_info *lp, void *data)
{
  struct lwp_info *ptr;

  if (!lp->stopped && !lp->signalled)
    {
      FUNC2 (lp, NULL);
      FUNC3 (lp, NULL);
      /* Resume if the lwp still exists.  */
      for (ptr = lwp_list; ptr; ptr = ptr->next)
	if (lp == ptr)
	  {
	    FUNC0 (lp, NULL);
	    FUNC1 (lp, NULL);
	  }
    }
  return 0;
}