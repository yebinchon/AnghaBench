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
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  INIT_FDSET_NUM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int fsocket_channel_fd ; 
 int /*<<< orphan*/  fsocket_fd_num ; 
 int /*<<< orphan*/  fsocket_fd_set ; 
 int FUNC5 () ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((constructor))
void FUNC8(void)
{
	int ret = 0;
	int i;
	cpu_set_t cmask;

	ret = FUNC6("/dev/fastsocket", O_RDONLY);
	if (ret < 0) {
		FUNC2("Open fastsocket channel failed, please CHECK\n");
		/* Just exit for safty*/
		FUNC4(-1);
	}
	fsocket_channel_fd = ret;

	fsocket_fd_set = FUNC3(INIT_FDSET_NUM, sizeof(int));
	if (!fsocket_fd_set) {
		FUNC2("Allocate memory for listen fd set failed\n");
		FUNC4(-1);
	}

	fsocket_fd_num = INIT_FDSET_NUM;

	FUNC1(&cmask);

	for (i = 0; i < FUNC5(); i++)
		FUNC0(i, &cmask);

	ret = FUNC7(0, FUNC5(), &cmask);
	if (ret < 0) {
		FUNC2("Clear process CPU affinity failed\n");
		FUNC4(-1);
	}

	return;
}