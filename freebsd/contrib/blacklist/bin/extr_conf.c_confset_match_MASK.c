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
struct confset {size_t cs_n; struct conf const* cs_c; } ;
struct conf {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ FUNC0 (struct conf*,struct conf const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,struct conf const*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void FUNC5 (struct conf*,struct conf const*) ; 

__attribute__((used)) static size_t
FUNC6(const struct confset *cs, struct conf *c,
    void (*fun)(struct conf *, const struct conf *))
{
	char buf[BUFSIZ];
	size_t i;

	for (i = 0; i < cs->cs_n; i++) {
		if (debug)
			FUNC2)(LOG_DEBUG, "%s", FUNC1(buf, sizeof(buf),
			    "check:\t", "", &cs->cs_c[i]));
		if (FUNC0(c, &cs->cs_c[i])) {
			if (debug)
				FUNC2)(LOG_DEBUG, "%s",
				    FUNC1(buf, sizeof(buf),
				    "found:\t", "", &cs->cs_c[i]));
			(*fun)(c, &cs->cs_c[i]);
			break;
		}
	}
	return i;
}