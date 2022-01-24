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
struct gomp_work_share {int ordered_owner; scalar_t__ ordered_num_used; int ordered_cur; unsigned int* ordered_team_ids; } ;
struct TYPE_2__ {struct gomp_work_share* work_share; struct gomp_team* team; } ;
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
  unsigned next_id;

  /* Work share constructs can be orphaned.  */
  if (team == NULL || team->nthreads == 1)
    return;

  /* We're no longer the owner.  */
  ws->ordered_owner = -1;

  /* If we're not the last thread in the queue, then wake the next.  */
  if (--ws->ordered_num_used > 0)
    {
      unsigned next = ws->ordered_cur + 1;
      if (next == team->nthreads)
	next = 0;
      ws->ordered_cur = next;

      next_id = ws->ordered_team_ids[next];
      FUNC0 (team->ordered_release[next_id]);
    }
}