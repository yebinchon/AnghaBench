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
struct TYPE_2__ {struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {int /*<<< orphan*/  barrier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct gomp_thread* FUNC1 () ; 

void
FUNC2 (void)
{
  struct gomp_thread *thr = FUNC1 ();
  struct gomp_team *team = thr->ts.team;

  /* It is legal to have orphaned barriers.  */
  if (team == NULL)
    return;

  FUNC0 (&team->barrier);
}