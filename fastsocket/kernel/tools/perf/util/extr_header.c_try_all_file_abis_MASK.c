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
typedef  scalar_t__ uint64_t ;
struct perf_header {int needs_swap; } ;
struct perf_file_section {int dummy; } ;

/* Variables and functions */
 scalar_t__* attr_file_abi_sizes ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static int FUNC2(uint64_t hdr_sz, struct perf_header *ph)
{
	uint64_t ref_size, attr_size;
	int i;

	for (i = 0 ; attr_file_abi_sizes[i]; i++) {
		ref_size = attr_file_abi_sizes[i]
			 + sizeof(struct perf_file_section);
		if (hdr_sz != ref_size) {
			attr_size = FUNC0(hdr_sz);
			if (attr_size != ref_size)
				continue;

			ph->needs_swap = true;
		}
		FUNC1("ABI%d perf.data file detected, need_swap=%d\n",
			 i,
			 ph->needs_swap);
		return 0;
	}
	/* could not determine endianness */
	return -1;
}