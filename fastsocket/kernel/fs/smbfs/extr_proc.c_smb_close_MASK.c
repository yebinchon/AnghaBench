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
struct smb_sb_info {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct smb_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct smb_sb_info*,struct inode*) ; 

int
FUNC3(struct inode *ino)
{
	int result = 0;

	if (FUNC1(ino)) {
		struct smb_sb_info *server = FUNC0(ino);
		result = FUNC2(server, ino);
	}
	return result;
}