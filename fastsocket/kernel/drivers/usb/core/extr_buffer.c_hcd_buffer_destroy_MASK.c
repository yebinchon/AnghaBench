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
struct usb_hcd {struct dma_pool** pool; } ;
struct dma_pool {int dummy; } ;

/* Variables and functions */
 int HCD_BUFFER_POOLS ; 
 int /*<<< orphan*/  FUNC0 (struct dma_pool*) ; 

void FUNC1(struct usb_hcd *hcd)
{
	int i;

	for (i = 0; i < HCD_BUFFER_POOLS; i++) {
		struct dma_pool *pool = hcd->pool[i];
		if (pool) {
			FUNC0(pool);
			hcd->pool[i] = NULL;
		}
	}
}