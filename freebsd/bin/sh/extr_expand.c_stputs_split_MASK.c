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
struct worddest {int dummy; } ;

/* Variables and functions */
 char const CCTL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char CTLESC ; 
 int EXP_GLOB ; 
 int /*<<< orphan*/  FUNC1 (char,int,char*,struct worddest*) ; 
 int /*<<< orphan*/  FUNC2 (char,char*) ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char) ; 

__attribute__((used)) static char *
FUNC6(const char *data, const char *syntax, int flag, char *p,
    struct worddest *dst)
{
	const char *ifs;
	char c;

	ifs = FUNC3() ? FUNC4() : " \t\n";
	while (*data) {
		FUNC0(2, p);
		c = *data++;
		if (FUNC5(ifs, c) != NULL) {
			FUNC1(c, flag, p, dst);
			continue;
		}
		if (flag & EXP_GLOB && syntax[(int)c] == CCTL)
			FUNC2(CTLESC, p);
		FUNC2(c, p);
	}
	return (p);
}