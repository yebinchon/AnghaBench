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
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ o_unknown ; 

__attribute__((used)) static int
FUNC2(char *argv[])
{
    int i = 1;			/* argv[0] points to a "--" token */

    while (argv[i] != 0
	   && (!FUNC0(argv[i]) || FUNC1(argv[i], 7) == o_unknown))
	i++;
    return i;
}