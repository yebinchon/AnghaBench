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
struct TYPE_3__ {char* name; char* value; } ;
typedef  TYPE_1__ OPLIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/ * ophead ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4(void)
{
	OPLIST *opt;

	if (ophead == NULL)
		return(0);
	/*
	 * print all we were given
	 */
	FUNC3(1,"These format options are not supported");
	while ((opt = FUNC1()) != NULL)
		(void)FUNC0(stderr, "\t%s = %s\n", opt->name, opt->value);
	FUNC2();
	return(0);
}