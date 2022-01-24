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
 void* FUNC0 (char*) ; 
 void* VAR_CMD ; 
 void* VAR_GLOBAL ; 
 void* VAR_INTERNAL ; 

void
FUNC1(void)
{
    VAR_INTERNAL = FUNC0("Internal");
    VAR_GLOBAL = FUNC0("Global");
    VAR_CMD = FUNC0("Command");

}