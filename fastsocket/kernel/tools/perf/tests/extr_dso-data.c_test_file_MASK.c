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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char* FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,unsigned char*,int) ; 

__attribute__((used)) static char *FUNC5(int size)
{
	static char buf_templ[] = "/tmp/test-XXXXXX";
	char *templ = buf_templ;
	int fd, i;
	unsigned char *buf;

	fd = FUNC2(templ);
	if (fd < 0) {
		FUNC3("mkstemp failed");
		return NULL;
	}

	buf = FUNC1(size);
	if (!buf) {
		FUNC0(fd);
		return NULL;
	}

	for (i = 0; i < size; i++)
		buf[i] = (unsigned char) ((int) i % 10);

	if (size != FUNC4(fd, buf, size))
		templ = NULL;

	FUNC0(fd);
	return templ;
}