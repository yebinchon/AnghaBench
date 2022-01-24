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
struct ext4_extent_header {scalar_t__ eh_magic; scalar_t__ eh_depth; scalar_t__ eh_max; scalar_t__ eh_entries; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ EXT4_EXT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,char const*,int,int,int,int,int,int) ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_extent_header*,int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(const char *function, struct inode *inode,
					struct ext4_extent_header *eh,
					int depth)
{
	const char *error_msg;
	int max = 0;

	if (FUNC4(eh->eh_magic != EXT4_EXT_MAGIC)) {
		error_msg = "invalid magic";
		goto corrupted;
	}
	if (FUNC4(FUNC3(eh->eh_depth) != depth)) {
		error_msg = "unexpected eh_depth";
		goto corrupted;
	}
	if (FUNC4(eh->eh_max == 0)) {
		error_msg = "invalid eh_max";
		goto corrupted;
	}
	max = FUNC1(inode, depth);
	if (FUNC4(FUNC3(eh->eh_max) > max)) {
		error_msg = "too large eh_max";
		goto corrupted;
	}
	if (FUNC4(FUNC3(eh->eh_entries) > FUNC3(eh->eh_max))) {
		error_msg = "invalid eh_entries";
		goto corrupted;
	}
	if (!FUNC2(inode, eh, depth)) {
		error_msg = "invalid extent entries";
		goto corrupted;
	}
	return 0;

corrupted:
	FUNC0(inode->i_sb, function,
			"bad header/extent in inode #%lu: %s - magic %x, "
			"entries %u, max %u(%u), depth %u(%u)",
			inode->i_ino, error_msg, FUNC3(eh->eh_magic),
			FUNC3(eh->eh_entries), FUNC3(eh->eh_max),
			max, FUNC3(eh->eh_depth), depth);

	return -EIO;
}