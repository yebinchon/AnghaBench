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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__le64 *FUNC6(struct super_block *sb,
	u64 fragment_table_start, unsigned int fragments)
{
	unsigned int length = FUNC2(fragments);
	__le64 *fragment_index;
	int err;

	/* Allocate fragment lookup table indexes */
	fragment_index = FUNC4(length, GFP_KERNEL);
	if (fragment_index == NULL) {
		FUNC0("Failed to allocate fragment index table\n");
		return FUNC1(-ENOMEM);
	}

	err = FUNC5(sb, fragment_index, fragment_table_start,
			length);
	if (err < 0) {
		FUNC0("unable to read fragment index table\n");
		FUNC3(fragment_index);
		return FUNC1(err);
	}

	return fragment_index;
}