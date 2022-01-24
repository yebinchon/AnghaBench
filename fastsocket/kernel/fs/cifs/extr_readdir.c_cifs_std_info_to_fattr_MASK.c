#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cifs_sb_info {int dummy; } ;
struct cifs_fattr {void* cf_eof; void* cf_bytes; int /*<<< orphan*/  cf_cifsattrs; void* cf_mtime; void* cf_ctime; void* cf_atime; } ;
struct TYPE_9__ {TYPE_2__* ses; } ;
struct TYPE_8__ {int /*<<< orphan*/  DataSize; int /*<<< orphan*/  AllocationSize; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  LastWriteTime; int /*<<< orphan*/  LastWriteDate; int /*<<< orphan*/  LastAccessTime; int /*<<< orphan*/  LastAccessDate; } ;
struct TYPE_7__ {TYPE_1__* server; } ;
struct TYPE_6__ {int timeAdj; } ;
typedef  TYPE_3__ FIND_FILE_STANDARD_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifs_fattr*,struct cifs_sb_info*) ; 
 TYPE_5__* FUNC1 (struct cifs_sb_info*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cifs_fattr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct cifs_fattr *fattr, FIND_FILE_STANDARD_INFO *info,
		       struct cifs_sb_info *cifs_sb)
{
	int offset = FUNC1(cifs_sb)->ses->server->timeAdj;

	FUNC5(fattr, 0, sizeof(*fattr));
	fattr->cf_atime = FUNC2(info->LastAccessDate,
					    info->LastAccessTime, offset);
	fattr->cf_ctime = FUNC2(info->LastWriteDate,
					    info->LastWriteTime, offset);
	fattr->cf_mtime = FUNC2(info->LastWriteDate,
					    info->LastWriteTime, offset);

	fattr->cf_cifsattrs = FUNC3(info->Attributes);
	fattr->cf_bytes = FUNC4(info->AllocationSize);
	fattr->cf_eof = FUNC4(info->DataSize);

	FUNC0(fattr, cifs_sb);
}