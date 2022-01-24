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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * code_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  outline ; 

__attribute__((used)) static void
FUNC2(FILE * fp, const char *const section[])
{
    int i;
    const char *s;

    for (i = 0; (s = section[i]) != 0; ++i)
    {
	/* prefix non-blank lines that don't start with
	   C pre-processor directives with 'extern ' */
	if (*s && (*s != '#'))
	    FUNC1("extern\t", fp);
	if (fp == code_file)
	    ++outline;
	FUNC0(fp, "%s\n", s);
    }
}