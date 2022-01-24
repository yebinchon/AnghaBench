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
typedef  int /*<<< orphan*/  vaddr ;
struct usb_bus {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DMA_TO_DEVICE ; 
 int ENOMEM ; 
 unsigned char* FUNC0 (struct usb_bus*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long*) ; 

__attribute__((used)) static int FUNC3(struct usb_bus *bus,
			      gfp_t mem_flags, dma_addr_t *dma_handle,
			      void **vaddr_handle, size_t size,
			      enum dma_data_direction dir)
{
	unsigned char *vaddr;

	vaddr = FUNC0(bus, size + sizeof(vaddr),
				 mem_flags, dma_handle);
	if (!vaddr)
		return -ENOMEM;

	/*
	 * Store the virtual address of the buffer at the end
	 * of the allocated dma buffer. The size of the buffer
	 * may be uneven so use unaligned functions instead
	 * of just rounding up. It makes sense to optimize for
	 * memory footprint over access speed since the amount
	 * of memory available for dma may be limited.
	 */
	FUNC2((unsigned long)*vaddr_handle,
		      (unsigned long *)(vaddr + size));

	if (dir == DMA_TO_DEVICE)
		FUNC1(vaddr, *vaddr_handle, size);

	*vaddr_handle = vaddr;
	return 0;
}