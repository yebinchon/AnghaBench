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
struct gomp_work_share {int ordered_owner; unsigned int* ordered_team_ids; } ;
struct TYPE_2__ {unsigned int team_id; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {int nthreads; int /*<<< orphan*/ * ordered_release; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gomp_thread* FUNC1 () ; 

void
FUNC2 (void)
{
  struct gomp_thread *thr = FUNC1 ();
  struct gomp_team *team = thr->ts.team;
  struct gomp_work_share *ws = thr->ts.work_share;
  unsigned id = thr->ts.team_id;

  if (team == NULL || team->nthreads == 1)
    return;

  ws->ordered_owner = -1;

  /* This thread currently owns the lock.  Increment the owner.  */
  if (++id == team->nthreads)
    id = 0;
  ws->ordered_team_ids[0] = id;
  FUNC0 (team->ordered_release[id]);
}