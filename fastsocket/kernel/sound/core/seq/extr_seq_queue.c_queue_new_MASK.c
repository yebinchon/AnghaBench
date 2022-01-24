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
struct snd_seq_queue {int queue; int owner; int locked; scalar_t__ klocked; int /*<<< orphan*/ * timer; int /*<<< orphan*/ * timeq; int /*<<< orphan*/ * tickq; int /*<<< orphan*/  use_lock; int /*<<< orphan*/  timer_mutex; int /*<<< orphan*/  check_lock; int /*<<< orphan*/  owner_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct snd_seq_queue *FUNC10(int owner, int locked)
{
	struct snd_seq_queue *q;

	q = FUNC1(sizeof(*q), GFP_KERNEL);
	if (q == NULL) {
		FUNC3("malloc failed for snd_seq_queue_new()\n");
		return NULL;
	}

	FUNC9(&q->owner_lock);
	FUNC9(&q->check_lock);
	FUNC2(&q->timer_mutex);
	FUNC8(&q->use_lock);
	q->queue = -1;

	q->tickq = FUNC5();
	q->timeq = FUNC5();
	q->timer = FUNC7();
	if (q->tickq == NULL || q->timeq == NULL || q->timer == NULL) {
		FUNC4(&q->tickq);
		FUNC4(&q->timeq);
		FUNC6(&q->timer);
		FUNC0(q);
		return NULL;
	}

	q->owner = owner;
	q->locked = locked;
	q->klocked = 0;

	return q;
}