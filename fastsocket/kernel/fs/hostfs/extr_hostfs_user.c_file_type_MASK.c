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
struct stat64 {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_rdev; } ;

/* Variables and functions */
 int OS_TYPE_BLOCKDEV ; 
 int OS_TYPE_CHARDEV ; 
 int OS_TYPE_DIR ; 
 int OS_TYPE_FIFO ; 
 int OS_TYPE_FILE ; 
 int OS_TYPE_SOCK ; 
 int OS_TYPE_SYMLINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC6 (char const*,struct stat64*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(const char *path, int *maj, int *min)
{
 	struct stat64 buf;

	if (FUNC6(path, &buf) < 0)
		return -errno;
	/*
	 * We cannot pass rdev as is because glibc and the kernel disagree
	 * about its definition.
	 */
	if (maj != NULL)
		*maj = FUNC7(buf.st_rdev);
	if (min != NULL)
		*min = FUNC8(buf.st_rdev);

	if (FUNC2(buf.st_mode))
		return OS_TYPE_DIR;
	else if (FUNC4(buf.st_mode))
		return OS_TYPE_SYMLINK;
	else if (FUNC1(buf.st_mode))
		return OS_TYPE_CHARDEV;
	else if (FUNC0(buf.st_mode))
		return OS_TYPE_BLOCKDEV;
	else if (FUNC3(buf.st_mode))
		return OS_TYPE_FIFO;
	else if (FUNC5(buf.st_mode))
		return OS_TYPE_SOCK;
	else return OS_TYPE_FILE;
}