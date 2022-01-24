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
typedef  int /*<<< orphan*/  MY_OBJ ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static bool
FUNC2(MY_OBJ * obj, char *string)
{
    char *match = FUNC0(obj);
    return FUNC1(match, string) != 0;
}