#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dt_cdefs_fd; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char const*,int,int) ; 

__attribute__((used)) static int
FUNC3(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	int fd;

	if (arg == NULL)
		return (FUNC1(dtp, EDT_BADOPTVAL));

	if ((fd = FUNC2(arg, O_CREAT | O_WRONLY, 0666)) == -1)
		return (FUNC1(dtp, errno));

	(void) FUNC0(dtp->dt_cdefs_fd);
	dtp->dt_cdefs_fd = fd;
	return (0);
}