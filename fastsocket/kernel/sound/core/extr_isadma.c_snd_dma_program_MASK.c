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

/* Variables and functions */
 unsigned short DMA_MODE_NO_ENABLE ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned short) ; 

void FUNC8(unsigned long dma,
		     unsigned long addr, unsigned int size,
                     unsigned short mode)
{
	unsigned long flags;

	flags = FUNC0();
	FUNC2(dma);
	FUNC1(dma);
	FUNC7(dma, mode);
	FUNC5(dma, addr);
	FUNC6(dma, size);
	if (!(mode & DMA_MODE_NO_ENABLE))
		FUNC3(dma);
	FUNC4(flags);
}