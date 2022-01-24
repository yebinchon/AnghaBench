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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  UNIX_TYPE_BLKDEV ; 
 int /*<<< orphan*/  UNIX_TYPE_CHARDEV ; 
 int /*<<< orphan*/  UNIX_TYPE_DIR ; 
 int /*<<< orphan*/  UNIX_TYPE_FIFO ; 
 int /*<<< orphan*/  UNIX_TYPE_FILE ; 
 int /*<<< orphan*/  UNIX_TYPE_SOCKET ; 
 int /*<<< orphan*/  UNIX_TYPE_SYMLINK ; 
 int /*<<< orphan*/  UNIX_TYPE_UNKNOWN ; 

__attribute__((used)) static u32 FUNC7(int mode)
{
	if (FUNC5(mode))
		return UNIX_TYPE_FILE;
	if (FUNC2(mode))
		return UNIX_TYPE_DIR;
	if (FUNC4(mode))
		return UNIX_TYPE_SYMLINK;
	if (FUNC1(mode))
		return UNIX_TYPE_CHARDEV;
	if (FUNC0(mode))
		return UNIX_TYPE_BLKDEV;
	if (FUNC3(mode))
		return UNIX_TYPE_FIFO;
	if (FUNC6(mode))
		return UNIX_TYPE_SOCKET;
	return UNIX_TYPE_UNKNOWN;
}