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
 unsigned int FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__le64 *FUNC7(struct super_block *sb,
			u64 id_table_start, unsigned short no_ids)
{
	unsigned int length = FUNC2(no_ids);
	__le64 *id_table;
	int err;

	FUNC3("In read_id_index_table, length %d\n", length);

	/* Allocate id lookup table indexes */
	id_table = FUNC5(length, GFP_KERNEL);
	if (id_table == NULL) {
		FUNC0("Failed to allocate id index table\n");
		return FUNC1(-ENOMEM);
	}

	err = FUNC6(sb, id_table, id_table_start, length);
	if (err < 0) {
		FUNC0("unable to read id index table\n");
		FUNC4(id_table);
		return FUNC1(err);
	}

	return id_table;
}