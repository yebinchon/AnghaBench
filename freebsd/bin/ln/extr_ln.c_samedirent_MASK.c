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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static int
FUNC4(const char *path1, const char *path2)
{
	const char *file1, *file2;
	char pathbuf[PATH_MAX];
	struct stat sb1, sb2;

	if (FUNC2(path1, path2) == 0)
		return 1;
	file1 = FUNC3(path1, '/');
	if (file1 != NULL)
		file1++;
	else
		file1 = path1;
	file2 = FUNC3(path2, '/');
	if (file2 != NULL)
		file2++;
	else
		file2 = path2;
	if (FUNC2(file1, file2) != 0)
		return 0;
	if (file1 - path1 >= PATH_MAX || file2 - path2 >= PATH_MAX)
		return 0;
	if (file1 == path1)
		FUNC0(pathbuf, ".", 2);
	else {
		FUNC0(pathbuf, path1, file1 - path1);
		pathbuf[file1 - path1] = '\0';
	}
	if (FUNC1(pathbuf, &sb1) != 0)
		return 0;
	if (file2 == path2)
		FUNC0(pathbuf, ".", 2);
	else {
		FUNC0(pathbuf, path2, file2 - path2);
		pathbuf[file2 - path2] = '\0';
	}
	if (FUNC1(pathbuf, &sb2) != 0)
		return 0;
	return sb1.st_dev == sb2.st_dev && sb1.st_ino == sb2.st_ino;
}