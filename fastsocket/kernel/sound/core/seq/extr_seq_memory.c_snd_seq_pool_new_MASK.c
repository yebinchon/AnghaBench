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
struct snd_seq_pool {int size; scalar_t__ max_used; int /*<<< orphan*/  output_sleep; scalar_t__ closing; int /*<<< orphan*/  counter; scalar_t__ total_elements; int /*<<< orphan*/ * free; int /*<<< orphan*/ * ptr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_seq_pool* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct snd_seq_pool *FUNC5(int poolsize)
{
	struct snd_seq_pool *pool;

	/* create pool block */
	pool = FUNC2(sizeof(*pool), GFP_KERNEL);
	if (pool == NULL) {
		FUNC3("seq: malloc failed for pool\n");
		return NULL;
	}
	FUNC4(&pool->lock);
	pool->ptr = NULL;
	pool->free = NULL;
	pool->total_elements = 0;
	FUNC0(&pool->counter, 0);
	pool->closing = 0;
	FUNC1(&pool->output_sleep);
	
	pool->size = poolsize;

	/* init statistics */
	pool->max_used = 0;
	return pool;
}