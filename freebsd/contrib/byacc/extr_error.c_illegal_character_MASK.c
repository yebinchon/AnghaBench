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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 char* input_file_name ; 
 int /*<<< orphan*/  line ; 
 int lineno ; 
 char* myname ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(char *c_cptr)
{
    FUNC1(stderr, "%s: e - line %d of \"%s\", illegal character\n",
	    myname, lineno, input_file_name);
    FUNC2(line, c_cptr);
    FUNC0(1);
}