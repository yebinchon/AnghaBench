#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  machine; int /*<<< orphan*/  version; int /*<<< orphan*/  release; int /*<<< orphan*/  sysname; } ;
struct swsusp_info {scalar_t__ version_code; TYPE_1__ uts; } ;
struct TYPE_4__ {int /*<<< orphan*/  machine; int /*<<< orphan*/  version; int /*<<< orphan*/  release; int /*<<< orphan*/  sysname; } ;

/* Variables and functions */
 scalar_t__ LINUX_VERSION_CODE ; 
 TYPE_2__* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(struct swsusp_info *info)
{
	if (info->version_code != LINUX_VERSION_CODE)
		return "kernel version";
	if (FUNC1(info->uts.sysname,FUNC0()->sysname))
		return "system type";
	if (FUNC1(info->uts.release,FUNC0()->release))
		return "kernel release";
	if (FUNC1(info->uts.version,FUNC0()->version))
		return "version";
	if (FUNC1(info->uts.machine,FUNC0()->machine))
		return "machine";
	return NULL;
}