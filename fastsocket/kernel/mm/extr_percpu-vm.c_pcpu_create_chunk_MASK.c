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
struct vm_struct {scalar_t__ addr; } ;
struct pcpu_chunk {scalar_t__ base_addr; struct vm_struct** data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pcpu_chunk* FUNC0 () ; 
 int /*<<< orphan*/  pcpu_atom_size ; 
 int /*<<< orphan*/  FUNC1 (struct pcpu_chunk*) ; 
 struct vm_struct** FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* pcpu_group_offsets ; 
 int /*<<< orphan*/  pcpu_group_sizes ; 
 int /*<<< orphan*/  pcpu_nr_groups ; 

__attribute__((used)) static struct pcpu_chunk *FUNC3(void)
{
	struct pcpu_chunk *chunk;
	struct vm_struct **vms;

	chunk = FUNC0();
	if (!chunk)
		return NULL;

	vms = FUNC2(pcpu_group_offsets, pcpu_group_sizes,
				pcpu_nr_groups, pcpu_atom_size, GFP_KERNEL);
	if (!vms) {
		FUNC1(chunk);
		return NULL;
	}

	chunk->data = vms;
	chunk->base_addr = vms[0]->addr - pcpu_group_offsets[0];
	return chunk;
}