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
struct bio {int /*<<< orphan*/  (* bi_destructor ) (struct bio*) ;int /*<<< orphan*/ * bi_next; int /*<<< orphan*/  bi_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 

void FUNC4(struct bio *bio)
{
	FUNC0(!FUNC2(&bio->bi_cnt));

	/*
	 * last put frees it
	 */
	if (FUNC1(&bio->bi_cnt)) {
		bio->bi_next = NULL;
		bio->bi_destructor(bio);
	}
}