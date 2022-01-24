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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 char* FUNC2 (char*,char) ; 

int FUNC3(char *path, mode_t mode)
{
	struct stat st;
	int err;
	char *d = path;

	if (*d != '/')
		return -1;

	if (FUNC1(path, &st) == 0)
		return 0;

	while (*++d == '/');

	while ((d = FUNC2(d, '/'))) {
		*d = '\0';
		err = FUNC1(path, &st) && FUNC0(path, mode);
		*d++ = '/';
		if (err)
			return -1;
		while (*d == '/')
			++d;
	}
	return (FUNC1(path, &st) && FUNC0(path, mode)) ? -1 : 0;
}