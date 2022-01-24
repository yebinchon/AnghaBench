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
 scalar_t__ LINELENGTH ; 
 scalar_t__ col ; 
 char* label ; 
 scalar_t__ FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(const char *s)
{

	if (col == 0) {
		col = FUNC0("%s: %s", label, s);
		return;
	}
	if ((col + FUNC1(s)) > LINELENGTH) {
		(void)FUNC0("\n\t");
		col = FUNC0("%s", s) + 8;
		return;
	}
	col += FUNC0(" %s", s);
}