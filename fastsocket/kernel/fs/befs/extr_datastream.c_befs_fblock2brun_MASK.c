#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
typedef  scalar_t__ befs_off_t ;
struct TYPE_7__ {scalar_t__ max_direct_range; scalar_t__ max_indirect_range; scalar_t__ max_double_indirect_range; } ;
typedef  TYPE_1__ befs_data_stream ;
typedef  scalar_t__ befs_blocknr_t ;
typedef  int /*<<< orphan*/  befs_block_run ;
struct TYPE_8__ {scalar_t__ block_shift; } ;

/* Variables and functions */
 int BEFS_ERR ; 
 TYPE_6__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,scalar_t__) ; 
 int FUNC2 (struct super_block*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct super_block*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct super_block*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC5(struct super_block *sb, befs_data_stream * data,
		 befs_blocknr_t fblock, befs_block_run * run)
{
	int err;
	befs_off_t pos = fblock << FUNC0(sb)->block_shift;

	if (pos < data->max_direct_range) {
		err = FUNC3(sb, data, fblock, run);

	} else if (pos < data->max_indirect_range) {
		err = FUNC4(sb, data, fblock, run);

	} else if (pos < data->max_double_indirect_range) {
		err = FUNC2(sb, data, fblock, run);

	} else {
		FUNC1(sb,
			   "befs_fblock2brun() was asked to find block %lu, "
			   "which is not mapped by the datastream\n", fblock);
		err = BEFS_ERR;
	}
	return err;
}