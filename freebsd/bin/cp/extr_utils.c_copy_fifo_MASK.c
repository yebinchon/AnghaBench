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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_2__ {char* p_path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ nflag ; 
 scalar_t__ pflag ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (struct stat*,int) ; 
 TYPE_1__ to ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int
FUNC5(struct stat *from_stat, int exists)
{

	if (exists && nflag) {
		if (vflag)
			FUNC1("%s not overwritten\n", to.p_path);
		return (1);
	}
	if (exists && FUNC3(to.p_path)) {
		FUNC4("unlink: %s", to.p_path);
		return (1);
	}
	if (FUNC0(to.p_path, from_stat->st_mode)) {
		FUNC4("mkfifo: %s", to.p_path);
		return (1);
	}
	return (pflag ? FUNC2(from_stat, -1) : 0);
}