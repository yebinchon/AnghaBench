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
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(char *name)
{
    char *s;
    int c;

    s = name;
    c = *s;
    if (c == '"')
    {
	c = *++s;
	if (!FUNC1(c) && c != '_' && c != '$')
	    return (0);
	while ((c = *++s) != '"')
	{
	    if (!FUNC0(c) && c != '_' && c != '$')
		return (0);
	}
	return (1);
    }

    if (!FUNC1(c) && c != '_' && c != '$')
	return (0);
    while ((c = *++s) != 0)
    {
	if (!FUNC0(c) && c != '_' && c != '$')
	    return (0);
    }
    return (1);
}