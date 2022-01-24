#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_2__ {void* base; int size; int starting_element_count; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,int,unsigned long long,...) ; 
 void* FUNC1 (size_t) ; 
 TYPE_1__* cvmx_fpa_pool_info ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 (void*) ; 

uint64_t FUNC4(uint64_t pool)
{
	uint64_t errors = 0;
	uint64_t count = 0;
	uint64_t base = FUNC3(cvmx_fpa_pool_info[pool].base);
	uint64_t finish =
	    base +
	    cvmx_fpa_pool_info[pool].size *
	    cvmx_fpa_pool_info[pool].starting_element_count;
	void *ptr;
	uint64_t address;

	count = 0;
	do {
		ptr = FUNC1(pool);
		if (ptr)
			address = FUNC3(ptr);
		else
			address = 0;
		if (address) {
			if ((address >= base) && (address < finish) &&
			    (((address -
			       base) % cvmx_fpa_pool_info[pool].size) == 0)) {
				count++;
			} else {
				FUNC0
				    ("ERROR: cvmx_fpa_shutdown_pool: Illegal address 0x%llx in pool %s(%d)\n",
				     (unsigned long long)address,
				     cvmx_fpa_pool_info[pool].name, (int)pool);
				errors++;
			}
		}
	} while (address);

#ifdef CVMX_ENABLE_PKO_FUNCTIONS
	if (pool == 0)
		cvmx_ipd_free_ptr();
#endif

	if (errors) {
		FUNC0
		    ("ERROR: cvmx_fpa_shutdown_pool: Pool %s(%d) started at 0x%llx, ended at 0x%llx, with a step of 0x%llx\n",
		     cvmx_fpa_pool_info[pool].name, (int)pool,
		     (unsigned long long)base, (unsigned long long)finish,
		     (unsigned long long)cvmx_fpa_pool_info[pool].size);
		return -errors;
	} else
		return 0;
}