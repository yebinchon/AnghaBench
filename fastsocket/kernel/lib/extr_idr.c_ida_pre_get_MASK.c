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
struct ida_bitmap {int dummy; } ;
struct ida {int /*<<< orphan*/  free_bitmap; int /*<<< orphan*/  idr; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ida*,struct ida_bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ida_bitmap* FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(struct ida *ida, gfp_t gfp_mask)
{
	/* allocate idr_layers */
	if (!FUNC1(&ida->idr, gfp_mask))
		return 0;

	/* allocate free_bitmap */
	if (!ida->free_bitmap) {
		struct ida_bitmap *bitmap;

		bitmap = FUNC2(sizeof(struct ida_bitmap), gfp_mask);
		if (!bitmap)
			return 0;

		FUNC0(ida, bitmap);
	}

	return 1;
}