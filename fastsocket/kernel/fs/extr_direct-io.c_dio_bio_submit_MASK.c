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
struct dio_submit {int /*<<< orphan*/  logical_offset_in_bio; scalar_t__ boundary; struct bio* bio; int /*<<< orphan*/  (* submit_io ) (scalar_t__,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct dio {scalar_t__ rw; int /*<<< orphan*/  inode; scalar_t__ is_async; int /*<<< orphan*/  bio_lock; int /*<<< orphan*/  refcount; } ;
struct bio {struct dio* bi_private; } ;

/* Variables and functions */
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct bio*) ; 

__attribute__((used)) static inline void FUNC5(struct dio *dio, struct dio_submit *sdio)
{
	struct bio *bio = sdio->bio;
	unsigned long flags;

	bio->bi_private = dio;

	FUNC1(&dio->bio_lock, flags);
	dio->refcount++;
	FUNC2(&dio->bio_lock, flags);

	if (dio->is_async && dio->rw == READ)
		FUNC0(bio);

	if (sdio->submit_io)
		sdio->submit_io(dio->rw, bio, dio->inode,
			       sdio->logical_offset_in_bio);
	else
		FUNC4(dio->rw, bio);

	sdio->bio = NULL;
	sdio->boundary = 0;
	sdio->logical_offset_in_bio = 0;
}