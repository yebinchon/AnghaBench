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
struct dio {scalar_t__ is_async; } ;
struct bio {struct dio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 

void FUNC2(struct bio *bio, int error)
{
	struct dio *dio = bio->bi_private;

	if (dio->is_async)
		FUNC0(bio, error);
	else
		FUNC1(bio, error);
}