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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 char* FUNC0 (char const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (char const*,unsigned int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 

int
FUNC5(const char *mangledname, char *buffer, size_t bufsize,
    unsigned int flags)
{
	unsigned int style, rc;
	char *rlt;

	style = flags & 0xFFFF;
	rc = flags >> 16;

	if (mangledname == NULL ||
	    ((style = FUNC2(mangledname, style)) == 0)) {
		errno = EINVAL;
		return (-1);
	}

	if ((rlt = FUNC0(mangledname, style, rc)) == NULL) {
		errno = EINVAL;
		return (-1);
	}

	if (buffer == NULL || bufsize < FUNC3(rlt) + 1) {
		FUNC1(rlt);
		errno = ENAMETOOLONG;
		return (-1);
	}

	FUNC4(buffer, rlt, bufsize);
	buffer[bufsize - 1] = '\0';
	FUNC1(rlt);

	return (0);
}