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
struct work_struct {int dummy; } ;
struct bio {struct bio* bi_private; } ;

/* Variables and functions */
 struct bio* bio_dirty_list ; 
 int /*<<< orphan*/  bio_dirty_lock ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct work_struct *work)
{
	unsigned long flags;
	struct bio *bio;

	FUNC3(&bio_dirty_lock, flags);
	bio = bio_dirty_list;
	bio_dirty_list = NULL;
	FUNC4(&bio_dirty_lock, flags);

	while (bio) {
		struct bio *next = bio->bi_private;

		FUNC2(bio);
		FUNC1(bio);
		FUNC0(bio);
		bio = next;
	}
}