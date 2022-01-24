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
struct lwp_info {struct lwp_info* next; int /*<<< orphan*/  ptid; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct lwp_info* lwp_list ; 
 int /*<<< orphan*/  FUNC2 (struct lwp_info*,int /*<<< orphan*/ ,int) ; 
 int num_lwps ; 
 int threaded ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct lwp_info *
FUNC4 (ptid_t ptid)
{
  struct lwp_info *lp;

  FUNC0 (FUNC1 (ptid));

  lp = (struct lwp_info *) FUNC3 (sizeof (struct lwp_info));

  FUNC2 (lp, 0, sizeof (struct lwp_info));

  lp->ptid = ptid;

  lp->next = lwp_list;
  lwp_list = lp;
  if (++num_lwps > 1)
    threaded = 1;

  return lp;
}