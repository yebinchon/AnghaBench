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

/* Variables and functions */
 int EV_SZ ; 
 int SEQ_MAX_QUEUE ; 
 int /*<<< orphan*/  lock ; 
 int output_threshold ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int qhead ; 
 int qlen ; 
 int /*<<< orphan*/ * queue ; 
 int seq_playing ; 
 int /*<<< orphan*/  seq_sleeper ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	int this_one, action;
	unsigned long flags;

	while (qlen > 0)
	{

		FUNC1(&lock,flags);
		qhead = ((this_one = qhead) + 1) % SEQ_MAX_QUEUE;
		qlen--;
		FUNC2(&lock,flags);

		seq_playing = 1;

		if ((action = FUNC0(&queue[this_one * EV_SZ])))
		{		/* Suspend playback. Next timer routine invokes this routine again */
			if (action == 2)
			{
				qlen++;
				qhead = this_one;
			}
			return;
		}
	}

	seq_playing = 0;

	if ((SEQ_MAX_QUEUE - qlen) >= output_threshold)
		FUNC3(&seq_sleeper);
}