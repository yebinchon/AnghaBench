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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (char*,int) ; 

int FUNC7(const char *filename, char **buffp, off_t *len)
{
	int fd = 0;	/* assume stdin */
	char *buf = NULL;
	off_t bufsize = 1024, offset = 0;
	int ret = 0;

	*buffp = NULL;
	if (FUNC4(filename, "-") != 0) {
		fd = FUNC2(filename, O_RDONLY);
		if (fd < 0)
			return errno;
	}

	/* Loop until we have read everything */
	buf = FUNC5(bufsize);
	do {
		/* Expand the buffer to hold the next chunk */
		if (offset == bufsize) {
			bufsize *= 2;
			buf = FUNC6(buf, bufsize);
		}

		ret = FUNC3(fd, &buf[offset], bufsize - offset);
		if (ret < 0) {
			ret = errno;
			break;
		}
		offset += ret;
	} while (ret != 0);

	/* Clean up, including closing stdin; return errno on error */
	FUNC0(fd);
	if (ret)
		FUNC1(buf);
	else
		*buffp = buf;
	*len = bufsize;
	return ret;
}