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
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,scalar_t__,size_t,int,int) ; 

__attribute__((used)) static void
FUNC1(struct device *hwdev, dma_addr_t dev_addr,
			  unsigned long offset, size_t size,
			  int dir, int target)
{
	FUNC0(hwdev, dev_addr + offset, size, dir, target);
}