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
struct snd_seq_timer {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_seq_timer* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_timer*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_timer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct snd_seq_timer *FUNC5(void)
{
	struct snd_seq_timer *tmr;
	
	tmr = FUNC0(sizeof(*tmr), GFP_KERNEL);
	if (tmr == NULL) {
		FUNC1("malloc failed for snd_seq_timer_new() \n");
		return NULL;
	}
	FUNC4(&tmr->lock);

	/* reset setup to defaults */
	FUNC2(tmr);
	
	/* reset time */
	FUNC3(tmr);
	
	return tmr;
}