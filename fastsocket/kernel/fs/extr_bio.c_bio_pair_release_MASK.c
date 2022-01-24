#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bi_private; } ;
struct TYPE_3__ {struct bio* bi_private; } ;
struct bio_pair {TYPE_2__ bio2; int /*<<< orphan*/  error; TYPE_1__ bio1; int /*<<< orphan*/  cnt; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_pair*,int /*<<< orphan*/ ) ; 

void FUNC3(struct bio_pair *bp)
{
	if (FUNC0(&bp->cnt)) {
		struct bio *master = bp->bio1.bi_private;

		FUNC1(master, bp->error);
		FUNC2(bp, bp->bio2.bi_private);
	}
}