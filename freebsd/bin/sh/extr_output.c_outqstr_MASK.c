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
struct output {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,struct output*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct output*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct output*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 size_t FUNC4 (char const*,char*) ; 

void
FUNC5(const char *p, struct output *file)
{
	int i;

	if (p[0] == '\0') {
		FUNC2("''", file);
		return;
	}
	for (i = 0; p[i] != '\0'; i++) {
		if ((p[i] > '\0' && p[i] < ' ' && p[i] != '\n') ||
		    (p[i] & 0x80) != 0 || p[i] == '\'') {
			FUNC1(p, file);
			return;
		}
	}

	if (p[FUNC4(p, "|&;<>()$`\\\" \n*?[~#=")] == '\0' ||
			FUNC3(p, "[") == 0) {
		FUNC2(p, file);
		return;
	}

	FUNC0('\'', file);
	FUNC2(p, file);
	FUNC0('\'', file);
}