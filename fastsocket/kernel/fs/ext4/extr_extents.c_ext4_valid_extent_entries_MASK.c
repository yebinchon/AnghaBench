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
struct inode {int dummy; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int dummy; } ;

/* Variables and functions */
 struct ext4_extent* FUNC0 (struct ext4_extent_header*) ; 
 struct ext4_extent_idx* FUNC1 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct ext4_extent_idx*) ; 
 unsigned short FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
				struct ext4_extent_header *eh,
				int depth)
{
	struct ext4_extent *ext;
	struct ext4_extent_idx *ext_idx;
	unsigned short entries;
	if (eh->eh_entries == 0)
		return 1;

	entries = FUNC4(eh->eh_entries);

	if (depth == 0) {
		/* leaf entries */
		ext = FUNC0(eh);
		while (entries) {
			if (!FUNC2(inode, ext))
				return 0;
			ext++;
			entries--;
		}
	} else {
		ext_idx = FUNC1(eh);
		while (entries) {
			if (!FUNC3(inode, ext_idx))
				return 0;
			ext_idx++;
			entries--;
		}
	}
	return 1;
}