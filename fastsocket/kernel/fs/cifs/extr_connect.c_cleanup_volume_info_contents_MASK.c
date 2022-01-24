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
struct smb_vol {scalar_t__ username; scalar_t__ UNC; scalar_t__ UNCip; scalar_t__ domainname; scalar_t__ iocharset; scalar_t__ prepath; int /*<<< orphan*/  password; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct smb_vol *volume_info)
{
	FUNC0(volume_info->username);
	FUNC1(volume_info->password);
	FUNC0(volume_info->UNC);
	if (volume_info->UNCip != volume_info->UNC + 2)
		FUNC0(volume_info->UNCip);
	FUNC0(volume_info->domainname);
	FUNC0(volume_info->iocharset);
	FUNC0(volume_info->prepath);
}