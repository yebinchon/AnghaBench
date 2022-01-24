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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char**) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int,int) ; 

__attribute__((used)) static int
FUNC5(char *argv[], int group)
{
    int result = 0;
    int have;
    char temp[80];

    while (argv[0] != 0) {
	if (FUNC3(argv[0]))
	    break;
	if ((have = FUNC2(argv)) < group) {
	    const char *format = FUNC1("Expected %d arguments, found only %d");
	    FUNC4(temp, format, group, have);
	    FUNC0(temp);
	} else if ((have % group) != 0) {
	    const char *format = FUNC1("Expected %d arguments, found extra %d");
	    FUNC4(temp, format, group, (have % group));
	    FUNC0(temp);
	}

	argv += have;
	result += (have / group);
    }

    return result;
}