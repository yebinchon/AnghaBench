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
struct smb_vol {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct smb_vol* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct smb_vol*) ; 
 int FUNC2 (struct smb_vol*,char*,char const*) ; 
 struct smb_vol* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct smb_vol *
FUNC4(char *mount_data, const char *devname)
{
	int rc;
	struct smb_vol *volume_info;

	volume_info = FUNC3(sizeof(struct smb_vol), GFP_KERNEL);
	if (!volume_info)
		return FUNC0(-ENOMEM);

	rc = FUNC2(volume_info, mount_data, devname);
	if (rc) {
		FUNC1(volume_info);
		volume_info = FUNC0(rc);
	}

	return volume_info;
}