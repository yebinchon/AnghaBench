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
struct super_block {int dummy; } ;
struct smb_sb_info {int dummy; } ;
struct smb_fattr {int f_ino; int /*<<< orphan*/  f_mtime; int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  aDIR ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_sb_info*,struct smb_fattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_sb_info*,struct smb_fattr*) ; 

void
FUNC3(struct smb_sb_info *server, struct smb_fattr *fattr,
		     struct super_block *sb)
{
	FUNC2(server, fattr);
	fattr->attr = aDIR;
	fattr->f_ino = 2; /* traditional root inode number */
	fattr->f_mtime = FUNC0(sb);
	FUNC1(server, fattr);
}