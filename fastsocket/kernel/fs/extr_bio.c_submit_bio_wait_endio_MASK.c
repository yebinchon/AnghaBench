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
struct bio {struct submit_bio_ret* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct bio *bio, int error)
{
	struct submit_bio_ret *ret = bio->bi_private;

	ret->error = error;
	FUNC0(&ret->event);
}