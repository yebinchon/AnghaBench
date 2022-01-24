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
struct submit_bio_ret {int error; int /*<<< orphan*/  event; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct submit_bio_ret* bi_private; } ;

/* Variables and functions */
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*) ; 
 int /*<<< orphan*/  submit_bio_wait_endio ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(int rw, struct bio *bio)
{
	struct submit_bio_ret ret;

	rw |= REQ_SYNC;
	FUNC0(&ret.event);
	bio->bi_private = &ret;
	bio->bi_end_io = submit_bio_wait_endio;
	FUNC1(rw, bio);
	FUNC2(&ret.event);

	return ret.error;
}