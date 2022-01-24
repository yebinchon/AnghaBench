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
struct futex_q {int /*<<< orphan*/ * lock_ptr; int /*<<< orphan*/  key; } ;
struct futex_hash_bucket {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct futex_hash_bucket* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct futex_hash_bucket *FUNC3(struct futex_q *q)
{
	struct futex_hash_bucket *hb;

	FUNC0(&q->key);
	hb = FUNC1(&q->key);
	q->lock_ptr = &hb->lock;

	FUNC2(&hb->lock);
	return hb;
}