#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_3__ {int border; int large_file_size; int preallocmin; int preallocsize; scalar_t__ bits; } ;
struct TYPE_4__ {TYPE_1__ s_alloc_options; } ;

/* Variables and functions */
 int PREALLOCATION_SIZE ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  concentrating_formatted_nodes ; 
 int /*<<< orphan*/  dirid_groups ; 
 int /*<<< orphan*/  displace_based_on_dirid ; 
 int /*<<< orphan*/  displacing_large_files ; 
 int /*<<< orphan*/  displacing_new_packing_localities ; 
 int /*<<< orphan*/  hashed_formatted_nodes ; 
 int /*<<< orphan*/  hundredth_slices ; 
 int /*<<< orphan*/  new_hashed_relocation ; 
 int /*<<< orphan*/  oid_groups ; 
 int /*<<< orphan*/  old_hashed_relocation ; 
 int /*<<< orphan*/  old_way ; 
 int /*<<< orphan*/  packing_groups ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,char*,char*) ; 
 int FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skip_busy ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char**,char*) ; 

int FUNC9(struct super_block *s, char *options)
{
	char *this_char, *value;

	FUNC0(s)->s_alloc_options.bits = 0;	/* clear default settings */

	while ((this_char = FUNC8(&options, ":")) != NULL) {
		if ((value = FUNC6(this_char, '=')) != NULL)
			*value++ = 0;

		if (!FUNC7(this_char, "concentrating_formatted_nodes")) {
			int temp;
			FUNC2(concentrating_formatted_nodes);
			temp = (value
				&& *value) ? FUNC5(value, &value,
							    0) : 10;
			if (temp <= 0 || temp > 100) {
				FUNC0(s)->s_alloc_options.border = 10;
			} else {
				FUNC0(s)->s_alloc_options.border =
				    100 / temp;
			}
			continue;
		}
		if (!FUNC7(this_char, "displacing_large_files")) {
			FUNC2(displacing_large_files);
			FUNC0(s)->s_alloc_options.large_file_size =
			    (value
			     && *value) ? FUNC5(value, &value, 0) : 16;
			continue;
		}
		if (!FUNC7(this_char, "displacing_new_packing_localities")) {
			FUNC2(displacing_new_packing_localities);
			continue;
		};

		if (!FUNC7(this_char, "old_hashed_relocation")) {
			FUNC2(old_hashed_relocation);
			continue;
		}

		if (!FUNC7(this_char, "new_hashed_relocation")) {
			FUNC2(new_hashed_relocation);
			continue;
		}

		if (!FUNC7(this_char, "dirid_groups")) {
			FUNC2(dirid_groups);
			continue;
		}
		if (!FUNC7(this_char, "oid_groups")) {
			FUNC2(oid_groups);
			continue;
		}
		if (!FUNC7(this_char, "packing_groups")) {
			FUNC2(packing_groups);
			continue;
		}
		if (!FUNC7(this_char, "hashed_formatted_nodes")) {
			FUNC2(hashed_formatted_nodes);
			continue;
		}

		if (!FUNC7(this_char, "skip_busy")) {
			FUNC2(skip_busy);
			continue;
		}

		if (!FUNC7(this_char, "hundredth_slices")) {
			FUNC2(hundredth_slices);
			continue;
		}

		if (!FUNC7(this_char, "old_way")) {
			FUNC2(old_way);
			continue;
		}

		if (!FUNC7(this_char, "displace_based_on_dirid")) {
			FUNC2(displace_based_on_dirid);
			continue;
		}

		if (!FUNC7(this_char, "preallocmin")) {
			FUNC0(s)->s_alloc_options.preallocmin =
			    (value
			     && *value) ? FUNC5(value, &value, 0) : 4;
			continue;
		}

		if (!FUNC7(this_char, "preallocsize")) {
			FUNC0(s)->s_alloc_options.preallocsize =
			    (value
			     && *value) ? FUNC5(value, &value,
							 0) :
			    PREALLOCATION_SIZE;
			continue;
		}

		FUNC4(s, "zam-4001", "unknown option - %s",
				 this_char);
		return 1;
	}

	FUNC3(s, "allocator options = [%08x]\n", FUNC1(s));
	return 0;
}