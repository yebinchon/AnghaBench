#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char** sid; scalar_t__ name; } ;

/* Variables and functions */
 TYPE_1__* curves ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(void)
{
	size_t u;
	for (u = 0; curves[u].name; u ++) {
		size_t v;

		for (v = 0; curves[u].sid[v]; v ++) {
			if (v == 0) {
				FUNC0("   ");
			} else if (v == 1) {
				FUNC0(" (");
			} else {
				FUNC0(", ");
			}
			FUNC0("%s", curves[u].sid[v]);
		}
		if (v > 1) {
			FUNC0(")");
		}
		FUNC0("\n");
	}
}