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
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  dirEntNum; int /*<<< orphan*/  volNumber; int /*<<< orphan*/  file_handle; int /*<<< orphan*/  opened; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct inode *inode)
{
	int err;

	err = 0;
	FUNC5(&FUNC0(inode)->open_mutex);
	if (FUNC3(&FUNC0(inode)->opened) == 1) {
		FUNC4(&FUNC0(inode)->opened, 0);
		err = FUNC7(FUNC1(inode), FUNC0(inode)->file_handle);

		if (!err)
			FUNC2("ncp_make_closed: volnum=%d, dirent=%u, error=%d\n",
				FUNC0(inode)->volNumber,
				FUNC0(inode)->dirEntNum, err);
	}
	FUNC6(&FUNC0(inode)->open_mutex);
	return err;
}