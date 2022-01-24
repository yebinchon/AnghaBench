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
struct snd_timer {int sticks; struct snd_hrtimer* private_data; } ;
struct snd_hrtimer {int /*<<< orphan*/  running; int /*<<< orphan*/  hrt; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int resolution ; 

__attribute__((used)) static int FUNC4(struct snd_timer *t)
{
	struct snd_hrtimer *stime = t->private_data;

	FUNC0(&stime->running, 0);
	FUNC1(&stime->hrt);
	FUNC2(&stime->hrt, FUNC3(t->sticks * resolution),
		      HRTIMER_MODE_REL);
	FUNC0(&stime->running, 1);
	return 0;
}