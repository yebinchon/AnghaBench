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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/ * func_params ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  stderr ; 
 char* yytext ; 

__attribute__((used)) static void
FUNC2 (const char *msg)
{
    func_params = NULL;
    FUNC1();		/* tell what line we're on, and what file */
    FUNC0(stderr, "%s at token '%s'\n", msg, yytext);
}