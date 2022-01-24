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
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_FOR_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,unsigned long,size_t,int,int /*<<< orphan*/ ) ; 

void
FUNC1(struct device *hwdev, dma_addr_t dev_addr,
				     unsigned long offset, size_t size,
				     enum dma_data_direction dir)
{
	FUNC0(hwdev, dev_addr, offset, size, dir,
				  SYNC_FOR_DEVICE);
}