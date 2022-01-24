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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FREE_BLOCKS_METADATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(handle_t *handle, struct inode *inode, __le32 *i_data)
{
	int retval;

	/* ei->i_data[EXT4_IND_BLOCK] */
	if (i_data[0]) {
		FUNC1(handle, inode);
		FUNC0(handle, inode,
				FUNC4(i_data[0]), 1,
				EXT4_FREE_BLOCKS_METADATA);
	}

	/* ei->i_data[EXT4_DIND_BLOCK] */
	if (i_data[1]) {
		retval = FUNC2(handle, inode, i_data[1]);
		if (retval)
			return retval;
	}

	/* ei->i_data[EXT4_TIND_BLOCK] */
	if (i_data[2]) {
		retval = FUNC3(handle, inode, i_data[2]);
		if (retval)
			return retval;
	}
	return 0;
}