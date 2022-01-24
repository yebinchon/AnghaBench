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
struct snd_seq_queue {int owner; int klocked; int /*<<< orphan*/  owner_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  num_queues ; 
 struct snd_seq_queue** queue_list ; 
 int /*<<< orphan*/  queue_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct snd_seq_queue *FUNC4(int id, int client)
{
	struct snd_seq_queue *q;
	unsigned long flags;

	FUNC1(&queue_list_lock, flags);
	q = queue_list[id];
	if (q) {
		FUNC0(&q->owner_lock);
		if (q->owner == client) {
			/* found */
			q->klocked = 1;
			FUNC2(&q->owner_lock);
			queue_list[id] = NULL;
			num_queues--;
			FUNC3(&queue_list_lock, flags);
			return q;
		}
		FUNC2(&q->owner_lock);
	}
	FUNC3(&queue_list_lock, flags);
	return NULL;
}