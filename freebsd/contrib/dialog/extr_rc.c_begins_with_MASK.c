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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(char *line, const char *keyword, char **params)
{
    int i = FUNC2(line, 0);
    int j = FUNC1(line, i);

    if ((j - i) == (int) FUNC3(keyword)) {
	char save = line[j];
	line[j] = 0;
	if (!FUNC0(keyword, line + i)) {
	    *params = line + FUNC2(line, j + 1);
	    return 1;
	}
	line[j] = save;
    }

    return 0;
}