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
struct dma_debug_entry {scalar_t__ dev_addr; scalar_t__ dev; } ;

/* Variables and functions */

__attribute__((used)) static bool FUNC0(struct dma_debug_entry *a, struct dma_debug_entry *b)
{
	return ((a->dev_addr == b->dev_addr) &&
		(a->dev == b->dev)) ? true : false;
}