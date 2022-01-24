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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 size_t lasttoken ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * tokname ; 

__attribute__((used)) static void
FUNC2(int token)
{
	char msg[64];

	if (token >= 0) {
		FUNC0(msg, 64, "%s unexpected (expecting %s)",
			tokname[lasttoken], tokname[token]);
	} else {
		FUNC0(msg, 64, "%s unexpected", tokname[lasttoken]);
	}
	FUNC1(msg);
}