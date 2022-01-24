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
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char*) ; 

void
FUNC3(Buffer *buf, char *pat, char *src, int len)
{
    char *m;

    if ((m = FUNC1(pat, '%')) != NULL) {
	/* Copy the prefix */
	FUNC0(buf, m - pat, pat);
	/* skip the % */
	pat = m + 1;
    }

    /* Copy the pattern */
    FUNC0(buf, len, src);

    /* append the rest */
    FUNC0(buf, FUNC2(pat), pat);
}