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
struct ida_bitmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ida {TYPE_1__ idr; struct ida_bitmap* free_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ida_bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ida *ida, struct ida_bitmap *bitmap)
{
	unsigned long flags;

	if (!ida->free_bitmap) {
		FUNC1(&ida->idr.lock, flags);
		if (!ida->free_bitmap) {
			ida->free_bitmap = bitmap;
			bitmap = NULL;
		}
		FUNC2(&ida->idr.lock, flags);
	}

	FUNC0(bitmap);
}