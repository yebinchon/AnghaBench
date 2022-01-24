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
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 int REG_NOMATCH ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
bool
FUNC5(const char *regex, const char *str)
{
    int res;
    regex_t preg;

    FUNC1("Looking for '%s' in '%s'\n", regex, str);
    FUNC0(FUNC2(&preg, regex, REG_EXTENDED) == 0);

    res = FUNC3(&preg, str, 0, NULL, 0);
    FUNC0(res == 0 || res == REG_NOMATCH);

    FUNC4(&preg);

    return res == 0;
}