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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  token_buf ;
typedef  int /*<<< orphan*/  target_fs ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_MAXPROPLEN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_RECEIVE_RESUME_TOKEN ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(libzfs_handle_t *hdl, const char *target_snap,
    boolean_t resumable)
{
	char target_fs[ZFS_MAX_DATASET_NAME_LEN];

	FUNC4(hdl, FUNC0(TEXT_DOMAIN,
	    "checksum mismatch or incomplete stream"));

	if (!resumable)
		return;
	(void) FUNC2(target_fs, target_snap, sizeof (target_fs));
	*FUNC1(target_fs, '@') = '\0';
	zfs_handle_t *zhp = FUNC5(hdl, target_fs,
	    ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
	if (zhp == NULL)
		return;

	char token_buf[ZFS_MAXPROPLEN];
	int error = FUNC6(zhp, ZFS_PROP_RECEIVE_RESUME_TOKEN,
	    token_buf, sizeof (token_buf),
	    NULL, NULL, 0, B_TRUE);
	if (error == 0) {
		FUNC4(hdl, FUNC0(TEXT_DOMAIN,
		    "checksum mismatch or incomplete stream.\n"
		    "Partially received snapshot is saved.\n"
		    "A resuming stream can be generated on the sending "
		    "system by running:\n"
		    "    zfs send -t %s"),
		    token_buf);
	}
	FUNC3(zhp);
}