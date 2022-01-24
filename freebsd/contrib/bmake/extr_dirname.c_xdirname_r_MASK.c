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
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static size_t
FUNC3(const char *path, char *buf, size_t buflen)
{
	const char *endp;
	size_t len;

	/*
	 * If `path' is a null pointer or points to an empty string,
	 * return a pointer to the string ".".
	 */
	if (path == NULL || *path == '\0') {
		path = ".";
		len = 1;
		goto out;
	}

	/* Strip trailing slashes, if any. */
	endp = path + FUNC2(path) - 1;
	while (endp != path && *endp == '/')
		endp--;

	/* Find the start of the dir */
	while (endp > path && *endp != '/')
		endp--;

	if (endp == path) {
		path = *endp == '/' ? "/" : ".";
		len = 1;
		goto out;
	}

	do
		endp--;
	while (endp > path && *endp == '/');

	len = endp - path + 1;
out:
	if (buf != NULL && buflen != 0) {
		buflen = FUNC0(len, buflen - 1);
		if (buf != path)
			FUNC1(buf, path, buflen);
		buf[buflen] = '\0';
	}
	return len;
}