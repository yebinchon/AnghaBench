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
struct snd_timer_instance {struct snd_timer_instance* owner; struct snd_timer* timer; int /*<<< orphan*/  slave_active_head; int /*<<< orphan*/  slave_list_head; int /*<<< orphan*/  ack_list; int /*<<< orphan*/  active_list; int /*<<< orphan*/  open_list; } ;
struct snd_timer {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer_instance*) ; 
 struct snd_timer_instance* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct snd_timer_instance* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct snd_timer_instance *FUNC5(char *owner,
							 struct snd_timer *timer)
{
	struct snd_timer_instance *timeri;
	timeri = FUNC3(sizeof(*timeri), GFP_KERNEL);
	if (timeri == NULL)
		return NULL;
	timeri->owner = FUNC2(owner, GFP_KERNEL);
	if (! timeri->owner) {
		FUNC1(timeri);
		return NULL;
	}
	FUNC0(&timeri->open_list);
	FUNC0(&timeri->active_list);
	FUNC0(&timeri->ack_list);
	FUNC0(&timeri->slave_list_head);
	FUNC0(&timeri->slave_active_head);

	timeri->timer = timer;
	if (timer && !FUNC4(timer->module)) {
		FUNC1(timeri->owner);
		FUNC1(timeri);
		return NULL;
	}

	return timeri;
}