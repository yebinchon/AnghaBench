#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int zc_nvlist_conf_size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_15__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_2__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_BUF_MINSIZE ; 
 scalar_t__ ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_TRYIMPORT ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static nvlist_t *
FUNC7(libzfs_handle_t *hdl, nvlist_t *config)
{
	nvlist_t *nvl;
	zfs_cmd_t zc = { 0 };
	int err, dstbuf_size;

	if (FUNC6(hdl, &zc, config) != 0)
		return (NULL);

	dstbuf_size = FUNC0(CONFIG_BUF_MINSIZE, zc.zc_nvlist_conf_size * 4);

	if (FUNC2(hdl, &zc, dstbuf_size) != 0) {
		FUNC4(&zc);
		return (NULL);
	}

	while ((err = FUNC1(hdl->libzfs_fd, ZFS_IOC_POOL_TRYIMPORT,
	    &zc)) != 0 && errno == ENOMEM) {
		if (FUNC3(hdl, &zc) != 0) {
			FUNC4(&zc);
			return (NULL);
		}
	}

	if (err) {
		FUNC4(&zc);
		return (NULL);
	}

	if (FUNC5(hdl, &zc, &nvl) != 0) {
		FUNC4(&zc);
		return (NULL);
	}

	FUNC4(&zc);
	return (nvl);
}