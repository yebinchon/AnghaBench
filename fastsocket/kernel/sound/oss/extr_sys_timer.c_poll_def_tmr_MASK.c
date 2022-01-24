#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned long curr_ticks ; 
 TYPE_1__ def_tmr ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  lock ; 
 unsigned long next_event_time ; 
 scalar_t__ opened ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long ticks_offs ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tmr_ctr ; 
 scalar_t__ tmr_running ; 

__attribute__((used)) static void
FUNC5(unsigned long dummy)
{

	if (opened)
	  {

		  {
			  def_tmr.expires = (1) + jiffies;
			  FUNC0(&def_tmr);
		  };

		  if (tmr_running)
		    {
				FUNC2(&lock);
			    tmr_ctr++;
			    curr_ticks = ticks_offs + FUNC4(tmr_ctr);

			    if (curr_ticks >= next_event_time)
			      {
				      next_event_time = (unsigned long) -1;
				      FUNC1(0);
			      }
				FUNC3(&lock);
		    }
	  }
}