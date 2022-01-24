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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  fd; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ IO ;

/* Variables and functions */
 int D_DISK ; 
 int D_MEM ; 
 int D_TAPE ; 
 scalar_t__ ESPIPE ; 
 int /*<<< orphan*/  FIODTYPE ; 
 int /*<<< orphan*/  ISCHR ; 
 int /*<<< orphan*/  ISPIPE ; 
 int /*<<< orphan*/  ISSEEK ; 
 int /*<<< orphan*/  ISTAPE ; 
 int /*<<< orphan*/  ISTRUNC ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(IO *io)
{
	struct stat sb;
	int type;

	if (FUNC4(io->fd, &sb) == -1)
		FUNC3(1, "%s", io->name);
	if (FUNC2(sb.st_mode))
		io->flags |= ISTRUNC;
	if (FUNC1(sb.st_mode) || FUNC0(sb.st_mode)) { 
		if (FUNC5(io->fd, FIODTYPE, &type) == -1) {
			FUNC3(1, "%s", io->name);
		} else {
			if (type & D_TAPE)
				io->flags |= ISTAPE;
			else if (type & (D_DISK | D_MEM))
				io->flags |= ISSEEK;
			if (FUNC1(sb.st_mode) && (type & D_TAPE) == 0)
				io->flags |= ISCHR;
		}
		return;
	}
	errno = 0;
	if (FUNC6(io->fd, (off_t)0, SEEK_CUR) == -1 && errno == ESPIPE)
		io->flags |= ISPIPE;
	else
		io->flags |= ISSEEK;
}