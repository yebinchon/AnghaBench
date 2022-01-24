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
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exit_v_notnull ; 
 int /*<<< orphan*/  exit_v_null ; 

__attribute__((used)) static
void
FUNC1(void *v)
{
    if (v == NULL)
        FUNC0(exit_v_null);
    else
        FUNC0(exit_v_notnull);

    UNREACHABLE;
}