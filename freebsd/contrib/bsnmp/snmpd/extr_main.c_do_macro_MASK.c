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
 int /*<<< orphan*/  LOG_ERR ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(char *arg)
{
	char *eq;
	int err;

	if ((eq = FUNC2(arg, '=')) == NULL)
		err = FUNC0(arg, "");
	else {
		*eq++ = '\0';
		err = FUNC0(arg, eq);
	}
	if (err == -1) {
		FUNC3(LOG_ERR, "cannot save macro: %m");
		FUNC1(1);
	}
}