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
 int /*<<< orphan*/  USER_REGGROUP ; 
 void* i386_mmx_reggroup ; 
 void* i386_sse_reggroup ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  i386_sse_reggroup = FUNC0 ("sse", USER_REGGROUP);
  i386_mmx_reggroup = FUNC0 ("mmx", USER_REGGROUP);
}