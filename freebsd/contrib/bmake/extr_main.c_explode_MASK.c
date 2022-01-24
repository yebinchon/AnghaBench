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
 char* FUNC0 (size_t) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *flags)
{
    size_t len;
    char *nf, *st;
    const char *f;

    if (flags == NULL)
	return NULL;

    for (f = flags; *f; f++)
	if (!FUNC2((unsigned char)*f))
	    break;

    if (*f)
	return FUNC1(flags);

    len = FUNC3(flags);
    st = nf = FUNC0(len * 3 + 1);
    while (*flags) {
	*nf++ = '-';
	*nf++ = *flags++;
	*nf++ = ' ';
    }
    *nf = '\0';
    return st;
}