#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ frozen; int /*<<< orphan*/  wait_unfrozen; } ;
struct super_block {scalar_t__ s_frozen; int /*<<< orphan*/  s_umount; TYPE_1__ s_writers; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SB_FREEZE_WRITE ; 
 scalar_t__ SB_UNFROZEN ; 
 struct super_block* FUNC0 (struct block_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

struct super_block *FUNC7(struct block_device *bdev)
{
	while (1) {
		struct super_block *s = FUNC0(bdev);

		if (!s)
			return s;

		if (FUNC1(FUNC3(s))) {
			if (s->s_writers.frozen == SB_UNFROZEN)
				return s;
			FUNC4(&s->s_umount);
			FUNC6(s->s_writers.wait_unfrozen,
				   s->s_writers.frozen == SB_UNFROZEN);
		} else {
			/* Version for out of tree filesystems w/o s_writers */
			if (s->s_frozen == SB_UNFROZEN)
				return s;
			FUNC4(&s->s_umount);
			FUNC5(s, SB_FREEZE_WRITE);
		}
		FUNC2(s);
	}
}