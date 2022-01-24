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
struct snd_seq_queue {int /*<<< orphan*/  timer; int /*<<< orphan*/  timeq; int /*<<< orphan*/  tickq; int /*<<< orphan*/  use_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct snd_seq_queue *q)
{
	/* stop and release the timer */
	FUNC4(q->timer);
	FUNC2(q);
	/* wait until access free */
	FUNC5(&q->use_lock);
	/* release resources... */
	FUNC1(&q->tickq);
	FUNC1(&q->timeq);
	FUNC3(&q->timer);

	FUNC0(q);
}