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
struct cifs_sb_info {int dummy; } ;
struct cifs_fattr {void* cf_mtime; void* cf_ctime; void* cf_atime; void* cf_bytes; void* cf_eof; int /*<<< orphan*/  cf_cifsattrs; } ;
struct TYPE_3__ {int /*<<< orphan*/  LastWriteTime; int /*<<< orphan*/  ChangeTime; int /*<<< orphan*/  LastAccessTime; int /*<<< orphan*/  AllocationSize; int /*<<< orphan*/  EndOfFile; int /*<<< orphan*/  ExtFileAttributes; } ;
typedef  TYPE_1__ FILE_DIRECTORY_INFO ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cifs_fattr*,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_fattr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct cifs_fattr *fattr, FILE_DIRECTORY_INFO *info,
		       struct cifs_sb_info *cifs_sb)
{
	FUNC4(fattr, 0, sizeof(*fattr));
	fattr->cf_cifsattrs = FUNC2(info->ExtFileAttributes);
	fattr->cf_eof = FUNC3(info->EndOfFile);
	fattr->cf_bytes = FUNC3(info->AllocationSize);
	fattr->cf_atime = FUNC0(info->LastAccessTime);
	fattr->cf_ctime = FUNC0(info->ChangeTime);
	fattr->cf_mtime = FUNC0(info->LastWriteTime);

	FUNC1(fattr, cifs_sb);
}