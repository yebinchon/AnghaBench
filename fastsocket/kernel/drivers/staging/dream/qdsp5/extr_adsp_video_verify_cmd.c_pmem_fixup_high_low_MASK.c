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
struct msm_adsp_module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,unsigned long,...) ; 
 scalar_t__ FUNC1 (struct msm_adsp_module*,void**,unsigned long*,unsigned long) ; 
 void* FUNC2 (unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned short*,unsigned short*) ; 

__attribute__((used)) static int FUNC4(unsigned short *high,
				unsigned short *low,
				unsigned short size_high,
				unsigned short size_low,
				struct msm_adsp_module *module,
				unsigned long *addr, unsigned long *size)
{
	void *phys_addr;
	unsigned long phys_size;
	unsigned long kvaddr;

	phys_addr = FUNC2(*high, *low);
	phys_size = (unsigned long)FUNC2(size_high, size_low);
	FUNC0("virt %x %x\n", phys_addr, phys_size);
	if (FUNC1(module, &phys_addr, &kvaddr, phys_size)) {
		FUNC0("ah%x al%x sh%x sl%x addr %x size %x\n",
			*high, *low, size_high, size_low, phys_addr, phys_size);
		return -1;
	}
	FUNC3(phys_addr, high, low);
	FUNC0("phys %x %x\n", phys_addr, phys_size);
	if (addr)
		*addr = kvaddr;
	if (size)
		*size = phys_size;
	return 0;
}