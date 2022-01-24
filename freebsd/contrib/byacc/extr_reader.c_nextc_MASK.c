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
 int /*<<< orphan*/  cptr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int
FUNC2(void)
{
    int ch;
    int finish = 0;

    do
    {
	switch (ch = FUNC1())
	{
	case '\n':
	    FUNC0();
	    break;
	case ' ':
	case '\t':
	case '\f':
	case '\r':
	case '\v':
	case ',':
	case ';':
	    ++cptr;
	    break;
	case '\\':
	    ch = '%';
	    /* FALLTHRU */
	default:
	    finish = 1;
	    break;
	}
    }
    while (!finish);

    return ch;
}