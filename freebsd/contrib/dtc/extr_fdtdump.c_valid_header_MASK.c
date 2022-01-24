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
struct fdt_header {int dummy; } ;
typedef  int off_t ;

/* Variables and functions */
 scalar_t__ FDT_MAGIC ; 
 scalar_t__ MAX_VERSION ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static bool FUNC6(char *p, off_t len)
{
	if (len < sizeof(struct fdt_header) ||
	    FUNC1(p) != FDT_MAGIC ||
	    FUNC5(p) > MAX_VERSION ||
	    FUNC0(p) >= MAX_VERSION ||
	    FUNC4(p) >= len ||
	    FUNC3(p) >= len ||
	    FUNC2(p) >= len)
		return 0;
	else
		return 1;
}