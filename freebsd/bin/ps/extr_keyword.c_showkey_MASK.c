#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ VAR ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int termwidth ; 
 TYPE_1__* var ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(void)
{
	VAR *v;
	int i;
	const char *p, *sep;

	i = 0;
	sep = "";
	FUNC4("key");
	for (v = var; *(p = v->name); ++v) {
		int len = FUNC0(p);
		if (termwidth && (i += len + 1) > termwidth) {
			i = len;
			sep = "\n";
		}
		FUNC2("{P:/%s}{l:key/%s}", sep, p);
		sep = " ";
	}
	FUNC2("\n");
	FUNC1("key");
	FUNC3();
}