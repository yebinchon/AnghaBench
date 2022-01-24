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
struct stat {int /*<<< orphan*/  st_size; } ;
struct carlfw_file {int /*<<< orphan*/  name; int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOMEM ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct carlfw_file *file, const char *name, const char *mode)
{
	struct stat file_stat;
	FILE *fh;
	int err;

	fh = FUNC3(name, mode);
	if (fh == NULL)
		return errno ? -errno : -1;

	err = FUNC5(FUNC2(fh), &file_stat);
	if (err)
		return errno ? -errno : -1;

	file->len = file_stat.st_size;
	file->data = FUNC6(file->len);
	if (file->data == NULL)
		return -ENOMEM;

	err = FUNC4(file->data, file->len, 1, fh);
	if (err != 1)
		return -FUNC1(fh);

	file->name = FUNC7(name);
	FUNC0(fh);

	if (!file->name)
		return -ENOMEM;

	return 0;
}