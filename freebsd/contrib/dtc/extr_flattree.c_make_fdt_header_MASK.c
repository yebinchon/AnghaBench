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
struct version_info {int version; int last_comp_version; int flags; int /*<<< orphan*/  hdr_size; } ;
struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {void* size_dt_struct; void* size_dt_strings; void* boot_cpuid_phys; void* totalsize; void* off_dt_strings; void* off_dt_struct; void* off_mem_rsvmap; void* last_comp_version; void* version; void* magic; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FDT_MAGIC ; 
 int FTF_BOOTCPUID ; 
 int FTF_STRTABSIZE ; 
 int FTF_STRUCTSIZE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fdt_header*,int,int) ; 

__attribute__((used)) static void FUNC3(struct fdt_header *fdt,
			    struct version_info *vi,
			    int reservesize, int dtsize, int strsize,
			    int boot_cpuid_phys)
{
	int reserve_off;

	reservesize += sizeof(struct fdt_reserve_entry);

	FUNC2(fdt, 0xff, sizeof(*fdt));

	fdt->magic = FUNC1(FDT_MAGIC);
	fdt->version = FUNC1(vi->version);
	fdt->last_comp_version = FUNC1(vi->last_comp_version);

	/* Reserve map should be doubleword aligned */
	reserve_off = FUNC0(vi->hdr_size, 8);

	fdt->off_mem_rsvmap = FUNC1(reserve_off);
	fdt->off_dt_struct = FUNC1(reserve_off + reservesize);
	fdt->off_dt_strings = FUNC1(reserve_off + reservesize
					  + dtsize);
	fdt->totalsize = FUNC1(reserve_off + reservesize + dtsize + strsize);

	if (vi->flags & FTF_BOOTCPUID)
		fdt->boot_cpuid_phys = FUNC1(boot_cpuid_phys);
	if (vi->flags & FTF_STRTABSIZE)
		fdt->size_dt_strings = FUNC1(strsize);
	if (vi->flags & FTF_STRUCTSIZE)
		fdt->size_dt_struct = FUNC1(dtsize);
}