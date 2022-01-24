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
struct ncp_mount_data_kernel {unsigned long flags; unsigned long mounted_uid; unsigned long ncp_fd; unsigned long time_out; unsigned long retry_count; unsigned long uid; unsigned long gid; unsigned long file_mode; unsigned long dir_mode; int info_fd; int /*<<< orphan*/ * wdog_pid; scalar_t__* mounted_vol; scalar_t__ int_flags; } ;

/* Variables and functions */
 int ECHRNG ; 
 unsigned long NCP_DEFAULT_DIR_MODE ; 
 unsigned long NCP_DEFAULT_FILE_MODE ; 
 unsigned long NCP_DEFAULT_RETRY_COUNT ; 
 unsigned long NCP_DEFAULT_TIME_OUT ; 
 unsigned long NCP_MOUNT_VERSION_V4 ; 
 unsigned long NCP_MOUNT_VERSION_V5 ; 
 int /*<<< orphan*/ * FUNC0 (unsigned long) ; 
 int FUNC1 (char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**,unsigned long*) ; 
 int /*<<< orphan*/  ncp_opts ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ncp_mount_data_kernel *data, char *options) {
	int optval;
	char *optarg;
	unsigned long optint;
	int version = 0;
	int ret;

	data->flags = 0;
	data->int_flags = 0;
	data->mounted_uid = 0;
	data->wdog_pid = NULL;
	data->ncp_fd = ~0;
	data->time_out = NCP_DEFAULT_TIME_OUT;
	data->retry_count = NCP_DEFAULT_RETRY_COUNT;
	data->uid = 0;
	data->gid = 0;
	data->file_mode = NCP_DEFAULT_FILE_MODE;
	data->dir_mode = NCP_DEFAULT_DIR_MODE;
	data->info_fd = -1;
	data->mounted_vol[0] = 0;
	
	while ((optval = FUNC1("ncpfs", &options, ncp_opts, NULL, &optarg, &optint)) != 0) {
		ret = optval;
		if (ret < 0)
			goto err;
		switch (optval) {
			case 'u':
				data->uid = optint;
				break;
			case 'g':
				data->gid = optint;
				break;
			case 'o':
				data->mounted_uid = optint;
				break;
			case 'm':
				data->file_mode = optint;
				break;
			case 'd':
				data->dir_mode = optint;
				break;
			case 't':
				data->time_out = optint;
				break;
			case 'r':
				data->retry_count = optint;
				break;
			case 'f':
				data->flags = optint;
				break;
			case 'w':
				data->wdog_pid = FUNC0(optint);
				break;
			case 'n':
				data->ncp_fd = optint;
				break;
			case 'i':
				data->info_fd = optint;
				break;
			case 'v':
				ret = -ECHRNG;
				if (optint < NCP_MOUNT_VERSION_V4)
					goto err;
				if (optint > NCP_MOUNT_VERSION_V5)
					goto err;
				version = optint;
				break;
			
		}
	}
	return 0;
err:
	FUNC2(data->wdog_pid);
	data->wdog_pid = NULL;
	return ret;
}