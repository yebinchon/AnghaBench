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
struct ocfs2_dir_entry {int /*<<< orphan*/  rec_len; int /*<<< orphan*/  name_len; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct ocfs2_dir_entry *de,
					 unsigned int new_rec_len)
{
	unsigned int de_really_used;

	/* Check whether this is an empty record with enough space */
	if (FUNC2(de->inode) == 0 &&
	    FUNC1(de->rec_len) >= new_rec_len)
		return 1;

	/*
	 * Record might have free space at the end which we can
	 * use.
	 */
	de_really_used = FUNC0(de->name_len);
	if (FUNC1(de->rec_len) >= (de_really_used + new_rec_len))
	    return 1;

	return 0;
}