#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dio {unsigned long refcount; TYPE_1__* iocb; int /*<<< orphan*/  bio_lock; scalar_t__ waiter; } ;
struct bio {struct dio* bi_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  ki_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dio*,struct bio*) ; 
 int /*<<< orphan*/  dio_cache ; 
 int /*<<< orphan*/  FUNC1 (struct dio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct bio *bio, int error)
{
	struct dio *dio = bio->bi_private;
	unsigned long remaining;
	unsigned long flags;

	/* cleanup the bio */
	FUNC0(dio, bio);

	FUNC3(&dio->bio_lock, flags);
	remaining = --dio->refcount;
	if (remaining == 1 && dio->waiter)
		FUNC5(dio->waiter);
	FUNC4(&dio->bio_lock, flags);

	if (remaining == 0) {
		FUNC1(dio, dio->iocb->ki_pos, 0, true);
		FUNC2(dio_cache, dio);
	}
}