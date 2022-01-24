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
struct gomp_work_share {int dummy; } ;
struct gomp_team {int generation_mask; unsigned int nthreads; int /*<<< orphan*/  master_release; int /*<<< orphan*/ ** ordered_release; int /*<<< orphan*/  barrier; struct gomp_work_share** work_shares; int /*<<< orphan*/  num_live_gen; int /*<<< orphan*/  oldest_live_gen; int /*<<< orphan*/  work_share_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gomp_team *
FUNC4 (unsigned nthreads, struct gomp_work_share *work_share)
{
  struct gomp_team *team;
  size_t size;

  size = sizeof (*team) + nthreads * sizeof (team->ordered_release[0]);
  team = FUNC1 (size);
  FUNC2 (&team->work_share_lock);

  team->work_shares = FUNC1 (4 * sizeof (struct gomp_work_share *));
  team->generation_mask = 3;
  team->oldest_live_gen = work_share == NULL;
  team->num_live_gen = work_share != NULL;
  team->work_shares[0] = work_share;

  team->nthreads = nthreads;
  FUNC0 (&team->barrier, nthreads);

  FUNC3 (&team->master_release, 0);
  team->ordered_release[0] = &team->master_release;

  return team;
}