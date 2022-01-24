#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct boot_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* srcpos_file ; 
 struct boot_info* the_boot_info ; 
 scalar_t__ treesource_error ; 
 int /*<<< orphan*/  yyin ; 
 scalar_t__ FUNC2 () ; 

struct boot_info *FUNC3(const char *fname)
{
	the_boot_info = NULL;
	treesource_error = 0;

	srcpos_file = FUNC1(fname, NULL);
	yyin = srcpos_file->file;

	if (FUNC2() != 0)
		FUNC0("Unable to parse input tree\n");

	if (treesource_error)
		FUNC0("Syntax error parsing input tree\n");

	return the_boot_info;
}