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
struct gomp_work_share {int ordered_owner; int ordered_num_used; unsigned int ordered_cur; unsigned int* ordered_team_ids; } ;
struct TYPE_2__ {size_t team_id; struct gomp_work_share* work_share; struct gomp_team* team; } ;
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
  unsigned index, next_id;

  /* Work share constructs can be orphaned.  */
  if (team == NULL || team->nthreads == 1)
    return;

  /* We're no longer the owner.  */
  ws->ordered_owner = -1;

  /* If there's only one thread in the queue, that must be us.  */
  if (ws->ordered_num_used == 1)
    {
      /* We have a similar situation as in gomp_ordered_first
	 where we need to post to our own release semaphore.  */
      FUNC0 (team->ordered_release[thr->ts.team_id]);
      return;
    }

  /* If the queue is entirely full, then we move ourself to the end of 
     the queue merely by incrementing ordered_cur.  Only if it's not 
     full do we have to write our id.  */
  if (ws->ordered_num_used < team->nthreads)
    {
      index = ws->ordered_cur + ws->ordered_num_used;
      if (index >= team->nthreads)
	index -= team->nthreads;
      ws->ordered_team_ids[index] = thr->ts.team_id;
    }

  index = ws->ordered_cur + 1;
  if (index == team->nthreads)
    index = 0;
  ws->ordered_cur = index;

  next_id = ws->ordered_team_ids[index];
  FUNC0 (team->ordered_release[next_id]);
}