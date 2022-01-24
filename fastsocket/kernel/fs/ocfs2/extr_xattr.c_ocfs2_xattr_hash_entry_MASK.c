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
struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_hash; int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_name_offset; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct inode *inode,
				   struct ocfs2_xattr_header *header,
				   struct ocfs2_xattr_entry *entry)
{
	u32 hash = 0;
	char *name = (char *)header + FUNC1(entry->xe_name_offset);

	hash = FUNC2(inode, name, entry->xe_name_len);
	entry->xe_name_hash = FUNC0(hash);

	return;
}