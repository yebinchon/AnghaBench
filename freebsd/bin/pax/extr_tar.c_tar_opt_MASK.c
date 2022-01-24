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
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ OPLIST ;

/* Variables and functions */
 scalar_t__ APPND ; 
 scalar_t__ ARCHIVE ; 
 int /*<<< orphan*/  TAR_NODIR ; 
 int /*<<< orphan*/  TAR_OPTION ; 
 scalar_t__ act ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tar_nodir ; 

int
FUNC3(void)
{
	OPLIST *opt;

	while ((opt = FUNC0()) != NULL) {
		if (FUNC2(opt->name, TAR_OPTION) ||
		    FUNC2(opt->value, TAR_NODIR)) {
			FUNC1(1, "Unknown tar format -o option/value pair %s=%s",
			    opt->name, opt->value);
			FUNC1(1,"%s=%s is the only supported tar format option",
			    TAR_OPTION, TAR_NODIR);
			return(-1);
		}

		/*
		 * we only support one option, and only when writing
		 */
		if ((act != APPND) && (act != ARCHIVE)) {
			FUNC1(1, "%s=%s is only supported when writing.",
			    opt->name, opt->value);
			return(-1);
		}
		tar_nodir = 1;
	}
	return(0);
}