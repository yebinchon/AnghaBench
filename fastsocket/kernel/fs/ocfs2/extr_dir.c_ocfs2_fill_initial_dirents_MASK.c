#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_dir_entry {int name_len; int /*<<< orphan*/  name; void* rec_len; void* inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_dir_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct ocfs2_dir_entry *FUNC7(struct inode *inode,
							  struct inode *parent,
							  char *start,
							  unsigned int size)
{
	struct ocfs2_dir_entry *de = (struct ocfs2_dir_entry *)start;

	de->inode = FUNC3(FUNC1(inode)->ip_blkno);
	de->name_len = 1;
	de->rec_len =
		FUNC2(FUNC0(de->name_len));
	FUNC6(de->name, ".");
	FUNC5(de, S_IFDIR);

	de = (struct ocfs2_dir_entry *) ((char *)de + FUNC4(de->rec_len));
	de->inode = FUNC3(FUNC1(parent)->ip_blkno);
	de->rec_len = FUNC2(size - FUNC0(1));
	de->name_len = 2;
	FUNC6(de->name, "..");
	FUNC5(de, S_IFDIR);

	return de;
}