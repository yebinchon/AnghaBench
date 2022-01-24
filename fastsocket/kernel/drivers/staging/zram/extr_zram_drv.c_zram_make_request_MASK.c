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
struct TYPE_2__ {int /*<<< orphan*/  invalid_io; } ;
struct zram {int /*<<< orphan*/  init_lock; TYPE_1__ stats; int /*<<< orphan*/  init_done; } ;
struct request_queue {struct zram* queuedata; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zram*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct zram*,struct bio*) ; 
 scalar_t__ FUNC7 (struct zram*) ; 
 int /*<<< orphan*/  FUNC8 (struct zram*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct request_queue *queue, struct bio *bio)
{
	struct zram *zram = queue->queuedata;

	if (FUNC4(!zram->init_done) && FUNC7(zram))
		goto error;

	FUNC3(&zram->init_lock);
	if (FUNC4(!zram->init_done))
		goto error_unlock;

	if (!FUNC6(zram, bio)) {
		FUNC8(zram, &zram->stats.invalid_io);
		goto error_unlock;
	}

	FUNC0(zram, bio, FUNC1(bio));
	FUNC5(&zram->init_lock);

	return 0;

error_unlock:
	FUNC5(&zram->init_lock);
error:
	FUNC2(bio);
	return 0;
}