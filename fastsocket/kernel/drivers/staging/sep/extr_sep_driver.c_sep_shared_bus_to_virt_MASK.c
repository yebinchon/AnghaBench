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
struct sep_device {void* shared_addr; void* shared_bus; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */

__attribute__((used)) static void *FUNC0(struct sep_device *sep,
						dma_addr_t bus_address)
{
	return sep->shared_addr + (bus_address - sep->shared_bus);
}