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
struct TYPE_3__ {int /*<<< orphan*/ * h_master_sat; int /*<<< orphan*/  h_num_sectors_in_master_sat; int /*<<< orphan*/  h_secid_first_sector_in_master_sat; int /*<<< orphan*/  h_num_sectors_in_short_sat; int /*<<< orphan*/  h_secid_first_sector_in_short_sat; int /*<<< orphan*/  h_min_size_standard_stream; int /*<<< orphan*/  h_unused1; int /*<<< orphan*/  h_secid_first_directory; int /*<<< orphan*/  h_num_sectors_in_sat; int /*<<< orphan*/  h_unused0; int /*<<< orphan*/  h_short_sec_size_p2; int /*<<< orphan*/  h_sec_size_p2; int /*<<< orphan*/  h_byte_order; int /*<<< orphan*/  h_version; int /*<<< orphan*/  h_revision; int /*<<< orphan*/  h_uuid; int /*<<< orphan*/  h_magic; } ;
typedef  TYPE_1__ cdf_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(cdf_header_t *h, char *buf)
{
	size_t i;
	size_t len = 0;

	FUNC0(h->h_magic);
	FUNC1(h->h_uuid);
	FUNC0(h->h_revision);
	FUNC0(h->h_version);
	FUNC0(h->h_byte_order);
	FUNC0(h->h_sec_size_p2);
	FUNC0(h->h_short_sec_size_p2);
	FUNC1(h->h_unused0);
	FUNC0(h->h_num_sectors_in_sat);
	FUNC0(h->h_secid_first_directory);
	FUNC1(h->h_unused1);
	FUNC0(h->h_min_size_standard_stream);
	FUNC0(h->h_secid_first_sector_in_short_sat);
	FUNC0(h->h_num_sectors_in_short_sat);
	FUNC0(h->h_secid_first_sector_in_master_sat);
	FUNC0(h->h_num_sectors_in_master_sat);
	for (i = 0; i < FUNC2(h->h_master_sat); i++)
		FUNC0(h->h_master_sat[i]);
}