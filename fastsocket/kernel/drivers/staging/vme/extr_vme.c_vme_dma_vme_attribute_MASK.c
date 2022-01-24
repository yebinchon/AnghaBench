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
typedef  int /*<<< orphan*/  vme_width_t ;
typedef  int /*<<< orphan*/  vme_cycle_t ;
typedef  int /*<<< orphan*/  vme_address_t ;
struct vme_dma_vme {unsigned long long address; int /*<<< orphan*/  dwidth; int /*<<< orphan*/  cycle; int /*<<< orphan*/  aspace; void* private; int /*<<< orphan*/  type; } ;
struct vme_dma_attr {unsigned long long address; int /*<<< orphan*/  dwidth; int /*<<< orphan*/  cycle; int /*<<< orphan*/  aspace; void* private; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VME_DMA_VME ; 
 int /*<<< orphan*/  FUNC0 (struct vme_dma_vme*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct vme_dma_attr *FUNC3(unsigned long long address,
	vme_address_t aspace, vme_cycle_t cycle, vme_width_t dwidth)
{
	struct vme_dma_attr *attributes;
	struct vme_dma_vme *vme_attr;

	/* XXX Run some sanity checks here */

	attributes = (struct vme_dma_attr *)FUNC1(
		sizeof(struct vme_dma_attr), GFP_KERNEL);
	if(attributes == NULL) {
		FUNC2("Unable to allocate memory for attributes structure\n");
		goto err_attr;
	}

	vme_attr = (struct vme_dma_vme *)FUNC1(sizeof(struct vme_dma_vme),
		GFP_KERNEL);
	if(vme_attr == NULL) {
		FUNC2("Unable to allocate memory for vme attributes\n");
		goto err_vme;
	}

	attributes->type = VME_DMA_VME;
	attributes->private = (void *)vme_attr;

	vme_attr->address = address;
	vme_attr->aspace = aspace;
	vme_attr->cycle = cycle;
	vme_attr->dwidth = dwidth;

	return attributes;

	FUNC0(vme_attr);
err_vme:
	FUNC0(attributes);
err_attr:
	return NULL;
}