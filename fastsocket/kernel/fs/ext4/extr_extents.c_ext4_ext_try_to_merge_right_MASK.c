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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_len; } ;
struct ext4_ext_path {struct ext4_extent_header* p_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ext4_extent* FUNC1 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct ext4_extent*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ext4_extent*) ; 
 scalar_t__ FUNC7 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_extent*) ; 
 unsigned int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*,struct ext4_extent*,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
			  struct ext4_ext_path *path,
			  struct ext4_extent *ex)
{
	struct ext4_extent_header *eh;
	unsigned int depth, len;
	int merge_done = 0;
	int uninitialized = 0;

	depth = FUNC9(inode);
	FUNC0(path[depth].p_hdr == NULL);
	eh = path[depth].p_hdr;

	while (ex < FUNC1(eh)) {
		if (!FUNC4(inode, ex, ex + 1))
			break;
		/* merge with next extent! */
		if (FUNC7(ex))
			uninitialized = 1;
		ex->ee_len = FUNC3(FUNC6(ex)
				+ FUNC6(ex + 1));
		if (uninitialized)
			FUNC8(ex);

		if (ex + 1 < FUNC1(eh)) {
			len = (FUNC1(eh) - ex - 1)
				* sizeof(struct ext4_extent);
			FUNC11(ex + 1, ex + 2, len);
		}
		FUNC10(&eh->eh_entries, -1);
		merge_done = 1;
		FUNC2(eh->eh_entries == 0);
		if (!eh->eh_entries)
			FUNC5(inode->i_sb,
				   "inode#%lu, eh->eh_entries = 0!",
				   inode->i_ino);
	}

	return merge_done;
}