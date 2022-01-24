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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int _LINE_BUFSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int const,int,int*) ; 

__attribute__((used)) static void
FUNC4(int ofd, int type, uint64_t addr, uint64_t num, const void *buf,
    size_t sz)
{
	char line[_LINE_BUFSZ];
	const uint8_t *p, *pe;
	int len, checksum;

	if (sz > 16)
		FUNC1(EXIT_FAILURE, "Internal: ihex_write() sz too big");
	checksum = 0;
	line[0] = ':';
	len = 1;
	FUNC3(line, &len, sz, 1, &checksum);
	FUNC3(line, &len, addr, 2, &checksum);
	FUNC3(line, &len, type, 1, &checksum);
	if (sz > 0) {
		if (buf != NULL) {
			for (p = buf, pe = p + sz; p < pe; p++)
				FUNC3(line, &len, *p, 1, &checksum);
		} else
			FUNC3(line, &len, num, sz, &checksum);
	}
	FUNC3(line, &len, (~checksum + 1) & 0xFF, 1, NULL);
	line[len++] = '\r';
	line[len++] = '\n';
	if (FUNC2(ofd, line, len) != (ssize_t) len)
		FUNC0(EXIT_FAILURE, "write failed");
}