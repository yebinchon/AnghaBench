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
struct TYPE_4__ {TYPE_1__* fbdev; int /*<<< orphan*/ * palette_vaddr; int /*<<< orphan*/  palette_paddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_PALETTE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ dispc ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	dispc.palette_vaddr = FUNC1(dispc.fbdev->dev,
		MAX_PALETTE_SIZE, &dispc.palette_paddr, GFP_KERNEL);
	if (dispc.palette_vaddr == NULL) {
		FUNC0(dispc.fbdev->dev, "failed to alloc palette memory\n");
		return -ENOMEM;
	}

	return 0;
}