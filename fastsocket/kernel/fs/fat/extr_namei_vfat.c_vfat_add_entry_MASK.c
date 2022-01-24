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
struct timespec {int dummy; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct msdos_dir_slot {int dummy; } ;
struct inode {struct timespec i_atime; struct timespec i_mtime; struct timespec i_ctime; } ;
struct fat_slot_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MSDOS_SLOTS ; 
 int FUNC1 (struct inode*,struct msdos_dir_slot*,int,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct msdos_dir_slot*) ; 
 struct msdos_dir_slot* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,unsigned int,int,int,struct timespec*,struct msdos_dir_slot*,int*) ; 
 unsigned int FUNC7 (struct qstr*) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, struct qstr *qname, int is_dir,
			  int cluster, struct timespec *ts,
			  struct fat_slot_info *sinfo)
{
	struct msdos_dir_slot *slots;
	unsigned int len;
	int err, nr_slots;

	len = FUNC7(qname);
	if (len == 0)
		return -ENOENT;

	slots = FUNC4(sizeof(*slots) * MSDOS_SLOTS, GFP_NOFS);
	if (slots == NULL)
		return -ENOMEM;

	err = FUNC6(dir, qname->name, len, is_dir, cluster, ts,
			       slots, &nr_slots);
	if (err)
		goto cleanup;

	err = FUNC1(dir, slots, nr_slots, sinfo);
	if (err)
		goto cleanup;

	/* update timestamp */
	dir->i_ctime = dir->i_mtime = dir->i_atime = *ts;
	if (FUNC0(dir))
		(void)FUNC2(dir);
	else
		FUNC5(dir);
cleanup:
	FUNC3(slots);
	return err;
}