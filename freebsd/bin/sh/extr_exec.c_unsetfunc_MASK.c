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
struct TYPE_2__ {int /*<<< orphan*/  func; } ;
struct tblentry {scalar_t__ cmdtype; TYPE_1__ param; } ;

/* Variables and functions */
 scalar_t__ CMDFUNCTION ; 
 struct tblentry* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(const char *name)
{
	struct tblentry *cmdp;

	if ((cmdp = FUNC0(name, 0)) != NULL && cmdp->cmdtype == CMDFUNCTION) {
		FUNC2(cmdp->param.func);
		FUNC1();
		return (0);
	}
	return (0);
}