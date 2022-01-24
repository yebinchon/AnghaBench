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
struct ainfo {int a_lineno; int /*<<< orphan*/  a_cptr; int /*<<< orphan*/  a_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 char* input_file_name ; 
 char* myname ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(const struct ainfo *a)
{
    FUNC1(stderr, "%s: e - line %d of \"%s\", unmatched /*\n",
	    myname, a->a_lineno, input_file_name);
    FUNC2(a->a_line, a->a_cptr);
    FUNC0(1);
}