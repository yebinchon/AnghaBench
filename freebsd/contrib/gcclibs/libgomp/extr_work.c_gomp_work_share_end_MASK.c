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
struct gomp_work_share {int dummy; } ;
struct TYPE_2__ {unsigned int work_share_generation; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {unsigned int generation_mask; int /*<<< orphan*/  barrier; scalar_t__ num_live_gen; int /*<<< orphan*/  oldest_live_gen; int /*<<< orphan*/ ** work_shares; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gomp_work_share*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct gomp_thread* FUNC3 () ; 

void
FUNC4 (void)
{
  struct gomp_thread *thr = FUNC3 ();
  struct gomp_team *team = thr->ts.team;
  struct gomp_work_share *ws = thr->ts.work_share;
  bool last;

  thr->ts.work_share = NULL;

  /* Work sharing constructs can be orphaned.  */
  if (team == NULL)
    {
      FUNC0 (ws);
      return;
    }

  last = FUNC2 (&team->barrier);

  if (last)
    {
      unsigned ws_index;

      ws_index = thr->ts.work_share_generation & team->generation_mask;
      team->work_shares[ws_index] = NULL;
      team->oldest_live_gen++;
      team->num_live_gen = 0;

      FUNC0 (ws);
    }

  FUNC1 (&team->barrier, last);
}