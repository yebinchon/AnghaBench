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
struct dio {int refcount; int /*<<< orphan*/  bio_lock; scalar_t__ waiter; struct dio* bio_list; struct dio* bi_private; } ;
struct bio {int refcount; int /*<<< orphan*/  bio_lock; scalar_t__ waiter; struct bio* bio_list; struct bio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct bio *bio, int error)
{
	struct dio *dio = bio->bi_private;
	unsigned long flags;

	FUNC0(&dio->bio_lock, flags);
	bio->bi_private = dio->bio_list;
	dio->bio_list = bio;
	if (--dio->refcount == 1 && dio->waiter)
		FUNC2(dio->waiter);
	FUNC1(&dio->bio_lock, flags);
}