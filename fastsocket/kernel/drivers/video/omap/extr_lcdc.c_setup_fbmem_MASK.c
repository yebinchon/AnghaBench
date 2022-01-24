#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct omapfb_mem_desc {int region_cnt; TYPE_3__* region; } ;
struct TYPE_6__ {scalar_t__ paddr; int /*<<< orphan*/  size; } ;
struct TYPE_5__ {int fbmem_allocated; scalar_t__ vram_phys; int /*<<< orphan*/  vram_virt; int /*<<< orphan*/  vram_size; TYPE_1__* fbdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ lcdc ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct omapfb_mem_desc *req_md)
{
	int r;

	if (!req_md->region_cnt) {
		FUNC2(lcdc.fbdev->dev, "no memory regions defined\n");
		return -EINVAL;
	}

	if (req_md->region_cnt > 1) {
		FUNC2(lcdc.fbdev->dev, "only one plane is supported\n");
		req_md->region_cnt = 1;
	}

	if (req_md->region[0].paddr == 0) {
		lcdc.fbmem_allocated = 1;
		if ((r = FUNC0(&req_md->region[0])) < 0)
			return r;
		return 0;
	}

	lcdc.vram_phys = req_md->region[0].paddr;
	lcdc.vram_size = req_md->region[0].size;

	if ((r = FUNC3()) < 0)
		return r;

	FUNC1(lcdc.fbdev->dev, "vram at %08x size %08lx mapped to 0x%p\n",
		 lcdc.vram_phys, lcdc.vram_size, lcdc.vram_virt);

	return 0;
}