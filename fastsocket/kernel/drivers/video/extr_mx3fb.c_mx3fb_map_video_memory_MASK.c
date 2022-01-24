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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {unsigned int smem_len; scalar_t__ smem_start; } ;
struct fb_info {unsigned int screen_size; int /*<<< orphan*/ * screen_base; TYPE_1__ fix; int /*<<< orphan*/  device; int /*<<< orphan*/  mm_lock; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GFP_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct fb_info *fbi, unsigned int mem_len,
				  bool lock)
{
	int retval = 0;
	dma_addr_t addr;

	fbi->screen_base = FUNC2(fbi->device,
						  mem_len,
						  &addr, GFP_DMA);

	if (!fbi->screen_base) {
		FUNC1(fbi->device, "Cannot allocate %u bytes framebuffer memory\n",
			mem_len);
		retval = -EBUSY;
		goto err0;
	}

	if (lock)
		FUNC4(&fbi->mm_lock);
	fbi->fix.smem_start = addr;
	fbi->fix.smem_len = mem_len;
	if (lock)
		FUNC5(&fbi->mm_lock);

	FUNC0(fbi->device, "allocated fb @ p=0x%08x, v=0x%p, size=%d.\n",
		(uint32_t) fbi->fix.smem_start, fbi->screen_base, fbi->fix.smem_len);

	fbi->screen_size = fbi->fix.smem_len;

	/* Clear the screen */
	FUNC3((char *)fbi->screen_base, 0, fbi->fix.smem_len);

	return 0;

err0:
	fbi->fix.smem_len = 0;
	fbi->fix.smem_start = 0;
	fbi->screen_base = NULL;
	return retval;
}