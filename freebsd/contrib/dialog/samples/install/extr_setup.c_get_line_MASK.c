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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(char *line, int size, FILE * f)
{
    char *ptr = line;
    int c;

    if (FUNC0(f))
	return -1;
    while (size-- && ((c = FUNC1(f)) != EOF) && (c != '\n'))
	*ptr++ = c;
    *ptr++ = '\0';
    return (int) (ptr - line);
}