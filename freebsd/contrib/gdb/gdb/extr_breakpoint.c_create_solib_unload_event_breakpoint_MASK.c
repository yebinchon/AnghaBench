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
 int /*<<< orphan*/  bp_catch_unload ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC1 (char *hookname, int tempflag,
				      char *dll_pathname, char *cond_string)
{
  FUNC0 (hookname,tempflag, dll_pathname, 
		       cond_string, bp_catch_unload);
}