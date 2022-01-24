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
typedef  int /*<<< orphan*/  u32 ;
struct zram {int /*<<< orphan*/  lock; } ;
struct bio_vec {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct zram*,struct bio_vec*,int /*<<< orphan*/ ,int,struct bio*) ; 
 int FUNC5 (struct zram*,struct bio_vec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct zram *zram, struct bio_vec *bvec, u32 index,
			int offset, struct bio *bio, int rw)
{
	int ret;

	if (rw == READ) {
		FUNC0(&zram->lock);
		ret = FUNC4(zram, bvec, index, offset, bio);
		FUNC2(&zram->lock);
	} else {
		FUNC1(&zram->lock);
		ret = FUNC5(zram, bvec, index, offset);
		FUNC3(&zram->lock);
	}

	return ret;
}