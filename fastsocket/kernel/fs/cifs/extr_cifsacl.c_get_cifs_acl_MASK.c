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
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_ntsd {int dummy; } ;
struct cifsFileInfo {int /*<<< orphan*/  netfid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct cifsFileInfo*) ; 
 struct cifsFileInfo* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct cifs_ntsd* FUNC3 (struct cifs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cifs_ntsd* FUNC4 (struct cifs_sb_info*,char const*,int /*<<< orphan*/ *) ; 

struct cifs_ntsd *FUNC5(struct cifs_sb_info *cifs_sb,
				      struct inode *inode, const char *path,
				      u32 *pacllen)
{
	struct cifs_ntsd *pntsd = NULL;
	struct cifsFileInfo *open_file = NULL;

	if (inode)
		open_file = FUNC2(FUNC0(inode), true);
	if (!open_file)
		return FUNC4(cifs_sb, path, pacllen);

	pntsd = FUNC3(cifs_sb, open_file->netfid, pacllen);
	FUNC1(open_file);
	return pntsd;
}