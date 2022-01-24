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
struct bio_set {scalar_t__ bio_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_set*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_set*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct bio_set *bs)
{
	if (bs->bio_pool)
		FUNC4(bs->bio_pool);

	FUNC1(bs);
	FUNC2(bs);
	FUNC0(bs);

	FUNC3(bs);
}