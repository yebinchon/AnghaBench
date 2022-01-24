#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void** h_master_sat; void* h_num_sectors_in_master_sat; void* h_secid_first_sector_in_master_sat; void* h_num_sectors_in_short_sat; void* h_secid_first_sector_in_short_sat; void* h_min_size_standard_stream; void* h_secid_first_directory; void* h_num_sectors_in_sat; void* h_short_sec_size_p2; void* h_sec_size_p2; void* h_byte_order; void* h_version; void* h_revision; void** h_uuid; void* h_magic; } ;
typedef  TYPE_1__ cdf_header_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 size_t FUNC4 (void**) ; 
 int /*<<< orphan*/  uint32_t ; 

void
FUNC5(cdf_header_t *h)
{
	size_t i;

	h->h_magic = FUNC3(h->h_magic);
	h->h_uuid[0] = FUNC3(h->h_uuid[0]);
	h->h_uuid[1] = FUNC3(h->h_uuid[1]);
	h->h_revision = FUNC1(h->h_revision);
	h->h_version = FUNC1(h->h_version);
	h->h_byte_order = FUNC1(h->h_byte_order);
	h->h_sec_size_p2 = FUNC1(h->h_sec_size_p2);
	h->h_short_sec_size_p2 = FUNC1(h->h_short_sec_size_p2);
	h->h_num_sectors_in_sat = FUNC2(h->h_num_sectors_in_sat);
	h->h_secid_first_directory = FUNC2(h->h_secid_first_directory);
	h->h_min_size_standard_stream =
	    FUNC2(h->h_min_size_standard_stream);
	h->h_secid_first_sector_in_short_sat =
	    FUNC2(FUNC0(uint32_t, h->h_secid_first_sector_in_short_sat));
	h->h_num_sectors_in_short_sat =
	    FUNC2(h->h_num_sectors_in_short_sat);
	h->h_secid_first_sector_in_master_sat =
	    FUNC2(FUNC0(uint32_t, h->h_secid_first_sector_in_master_sat));
	h->h_num_sectors_in_master_sat =
	    FUNC2(h->h_num_sectors_in_master_sat);
	for (i = 0; i < FUNC4(h->h_master_sat); i++) {
		h->h_master_sat[i] =
		    FUNC2(FUNC0(uint32_t, h->h_master_sat[i]));
	}
}