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
struct lwp_info {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ SIGTRAP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (struct lwp_info *lp, void *data)
{
  int *count = data;

  FUNC2 (count != NULL);

  /* Count only LWPs that have a SIGTRAP event pending.  */
  if (lp->status != 0
      && FUNC0 (lp->status) && FUNC1 (lp->status) == SIGTRAP)
    (*count)++;

  return 0;
}