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
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 char* FUNC2 (char*,char) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5(char *line)
{
	size_t linelen;
	char *p;

	if ((p = FUNC2(line, '\n')))
		*p = (char)0;

	/* Escape leading dot in every case */
	linelen = FUNC3(line);
	if (line[0] == '.') {
		if ((linelen + 2) > 1000) {
			FUNC4(LOG_CRIT, "Cannot escape leading dot.  Buffer overflow");
			FUNC0(EX_DATAERR);
		}
		FUNC1((line + 1), line, (linelen + 1));
		line[0] = '.';
	}
}