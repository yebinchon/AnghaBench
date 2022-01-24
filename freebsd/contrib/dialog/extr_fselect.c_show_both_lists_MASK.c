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
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC2(char *input, LIST * d_list, LIST * f_list, bool keep)
{
    char *leaf = FUNC0(input);

    return FUNC1(leaf, d_list, keep) || FUNC1(leaf, f_list, keep);
}