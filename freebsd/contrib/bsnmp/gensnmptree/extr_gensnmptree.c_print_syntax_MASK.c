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
typedef  size_t u_int ;
struct TYPE_2__ {char* str; scalar_t__ tok; size_t val; } ;

/* Variables and functions */
 scalar_t__ TOK_TYPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* keywords ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(u_int syntax)
{
	u_int i;

	for (i = 0; keywords[i].str != NULL; i++)
		if (keywords[i].tok == TOK_TYPE &&
		    keywords[i].val == syntax) {
			FUNC1(" %s", keywords[i].str);
			return;
	}
	FUNC0();
}