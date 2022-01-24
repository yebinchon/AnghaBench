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
struct dio_submit {scalar_t__ reap_counter; } ;
struct dio {int /*<<< orphan*/  bio_lock; struct bio* bio_list; } ;
struct bio {struct bio* bi_private; } ;

/* Variables and functions */
 int FUNC0 (struct dio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct dio *dio, struct dio_submit *sdio)
{
	int ret = 0;

	if (sdio->reap_counter++ >= 64) {
		while (dio->bio_list) {
			unsigned long flags;
			struct bio *bio;
			int ret2;

			FUNC1(&dio->bio_lock, flags);
			bio = dio->bio_list;
			dio->bio_list = bio->bi_private;
			FUNC2(&dio->bio_lock, flags);
			ret2 = FUNC0(dio, bio);
			if (ret == 0)
				ret = ret2;
		}
		sdio->reap_counter = 0;
	}
	return ret;
}