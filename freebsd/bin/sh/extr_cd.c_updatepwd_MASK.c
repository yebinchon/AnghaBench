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
 int /*<<< orphan*/  VEXPORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* curdir ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(char *dir)
{
	char *prevdir;

	FUNC1();				/* update command hash table */

	FUNC3("PWD", dir, VEXPORT);
	FUNC3("OLDPWD", curdir, VEXPORT);
	prevdir = curdir;
	curdir = dir ? FUNC2(dir) : NULL;
	FUNC0(prevdir);
}