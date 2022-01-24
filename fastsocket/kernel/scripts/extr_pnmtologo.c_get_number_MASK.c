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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filename ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static unsigned int FUNC4(FILE *fp)
{
    int c, val;

    /* Skip leading whitespace */
    do {
	c = FUNC1(fp);
	if (c == EOF)
	    FUNC0("%s: end of file\n", filename);
	if (c == '#') {
	    /* Ignore comments 'till end of line */
	    do {
		c = FUNC1(fp);
		if (c == EOF)
		    FUNC0("%s: end of file\n", filename);
	    } while (c != '\n');
	}
    } while (FUNC3(c));

    /* Parse decimal number */
    val = 0;
    while (FUNC2(c)) {
	val = 10*val+c-'0';
	c = FUNC1(fp);
	if (c == EOF)
	    FUNC0("%s: end of file\n", filename);
    }
    return val;
}