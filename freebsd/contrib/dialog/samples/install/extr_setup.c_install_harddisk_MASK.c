#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dialog_input_result ; 
 int FUNC1 (char*,char*,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  null ; 
 TYPE_1__* partitions ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
    const char *name;
    int part, ret;

    if ((part = FUNC4()) <= -1)
	return;
    name = partitions[part].name;

    if (FUNC3("mount -t ext2 %s /source %s", name, null))
	return;
    ret = FUNC1("Path in partition",
			  "Please enter the directory in which the "
			  "source files are.", 13, 50, "", FALSE);
    FUNC0();
    if (ret != 0)
	return;
    /* XXX strdup */
    FUNC2(FUNC5(dialog_input_result));
    if (FUNC3("umount /source %s", null))
	return;
}