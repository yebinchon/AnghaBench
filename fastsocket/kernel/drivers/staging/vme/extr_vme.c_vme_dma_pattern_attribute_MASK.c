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
typedef  int /*<<< orphan*/  vme_pattern_t ;
typedef  int /*<<< orphan*/  u32 ;
struct vme_dma_pattern {int /*<<< orphan*/  type; int /*<<< orphan*/  pattern; void* private; } ;
struct vme_dma_attr {int /*<<< orphan*/  type; int /*<<< orphan*/  pattern; void* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VME_DMA_PATTERN ; 
 int /*<<< orphan*/  FUNC0 (struct vme_dma_pattern*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct vme_dma_attr *FUNC3(u32 pattern,
	vme_pattern_t type)
{
	struct vme_dma_attr *attributes;
	struct vme_dma_pattern *pattern_attr;

	attributes = (struct vme_dma_attr *)FUNC1(
		sizeof(struct vme_dma_attr), GFP_KERNEL);
	if(attributes == NULL) {
		FUNC2("Unable to allocate memory for attributes structure\n");
		goto err_attr;
	}

	pattern_attr = (struct vme_dma_pattern *)FUNC1(
		sizeof(struct vme_dma_pattern), GFP_KERNEL);
	if(pattern_attr == NULL) {
		FUNC2("Unable to allocate memory for pattern attributes\n");
		goto err_pat;
	}

	attributes->type = VME_DMA_PATTERN;
	attributes->private = (void *)pattern_attr;

	pattern_attr->pattern = pattern;
	pattern_attr->type = type;

	return attributes;

	FUNC0(pattern_attr);
err_pat:
	FUNC0(attributes);
err_attr:
	return NULL;
}