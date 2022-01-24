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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  armag ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 

int
FUNC4(GNode *gn)
{
    static const char armag[] = "!<arch>\n";
    char buf[sizeof(armag)-1];
    int fd;

    if ((fd = FUNC2(gn->path, O_RDONLY)) == -1)
	return FALSE;

    if (FUNC3(fd, buf, sizeof(buf)) != sizeof(buf)) {
	(void)FUNC0(fd);
	return FALSE;
    }

    (void)FUNC0(fd);

    return FUNC1(buf, armag, sizeof(buf)) == 0;
}