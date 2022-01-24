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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  linebuf ;

/* Variables and functions */
#define  DUMP_PREFIX_ADDRESS 129 
#define  DUMP_PREFIX_OFFSET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int,int,unsigned char*,int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,...) ; 

void FUNC3(const char *level, const char *prefix_str, int prefix_type,
			int rowsize, int groupsize,
			const void *buf, size_t len, bool ascii)
{
	const u8 *ptr = buf;
	int i, linelen, remaining = len;
	unsigned char linebuf[200];

	if (rowsize != 16 && rowsize != 32)
		rowsize = 16;

	for (i = 0; i < len; i += rowsize) {
		linelen = FUNC1(remaining, rowsize);
		remaining -= rowsize;
		FUNC0(ptr + i, linelen, rowsize, groupsize,
				linebuf, sizeof(linebuf), ascii);

		switch (prefix_type) {
		case DUMP_PREFIX_ADDRESS:
			FUNC2("%s%s%*p: %s\n", level, prefix_str,
				(int)(2 * sizeof(void *)), ptr + i, linebuf);
			break;
		case DUMP_PREFIX_OFFSET:
			FUNC2("%s%s%.8x: %s\n", level, prefix_str, i, linebuf);
			break;
		default:
			FUNC2("%s%s%s\n", level, prefix_str, linebuf);
			break;
		}
	}
}