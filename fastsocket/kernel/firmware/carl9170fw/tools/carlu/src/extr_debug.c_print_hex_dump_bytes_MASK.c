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
typedef  enum debug_level_t { ____Placeholder_debug_level_t } debug_level_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,char*,char const*,char*,char*) ; 
 scalar_t__ FUNC1 (unsigned char const) ; 
 scalar_t__ FUNC2 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

void FUNC4(const enum debug_level_t lvl, const char *pre,
			  const void *buf, size_t len)
{
	char line[58];
	char str[17] = { 0 };
	const unsigned char *tmp = (void *) buf;
	char *pbuf = line;
	size_t i, j;

	for (i = 0; i < len; i++) {
		if (i % 16 == 0) {
			if (pbuf != line) {
				FUNC0(lvl, "%s%s: %s\n", pre, line, str);
				pbuf = line;
			}

			pbuf += FUNC3(pbuf, "0x%04lx: ", (unsigned long)i);
		}

		pbuf += FUNC3(pbuf, "%.2x ", tmp[i]);
		str[i % 16] = (FUNC2(tmp[i]) && FUNC1(tmp[i])) ? tmp[i] : '.';
	}
	if (pbuf != line) {
		if ((i % 16)) {
			str[i % 16] = '\0';

			for (j = 0; j < (16 - (i % 16)); j++)
				pbuf += FUNC3(pbuf, "   ");
		}

		FUNC0(lvl, "%s%s: %s\n", pre, line, str);
	}
}