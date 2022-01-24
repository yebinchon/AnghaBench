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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int const) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,char*) ; 

__attribute__((used)) static void
FUNC3(const u_char *pkt, size_t ret)
{
	char buf[8 * 3 + 1];
	size_t i, j;

	for (i = 0; i < ret; i += 8) {
		buf[0] = '\0';
		for (j = 0; i + j < (size_t)ret && j < 8; j++)
			FUNC0(buf + FUNC1(buf), " %02x", pkt[i + j]);
		FUNC2(LOG_INFO, "%04zu:%s", i, buf);
	}
}