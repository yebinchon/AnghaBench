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
struct msdos_sb_info {int dummy; } ;
struct msdos_dir_entry {scalar_t__ size; void* starthi; void* start; void* date; void* time; scalar_t__ ctime_cs; scalar_t__ ctime; scalar_t__ adate; scalar_t__ cdate; scalar_t__ lcase; int /*<<< orphan*/  attr; int /*<<< orphan*/  name; } ;
struct inode {struct timespec i_mtime; struct timespec i_ctime; int /*<<< orphan*/  i_sb; } ;
struct fat_slot_info {int dummy; } ;
typedef  void* __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ARCH ; 
 int /*<<< orphan*/  ATTR_DIR ; 
 int /*<<< orphan*/  ATTR_HIDDEN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MSDOS_NAME ; 
 struct msdos_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct msdos_dir_entry*,int,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct msdos_sb_info*,struct timespec*,void**,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, const unsigned char *name,
			   int is_dir, int is_hid, int cluster,
			   struct timespec *ts, struct fat_slot_info *sinfo)
{
	struct msdos_sb_info *sbi = FUNC1(dir->i_sb);
	struct msdos_dir_entry de;
	__le16 time, date;
	int err;

	FUNC7(de.name, name, MSDOS_NAME);
	de.attr = is_dir ? ATTR_DIR : ATTR_ARCH;
	if (is_hid)
		de.attr |= ATTR_HIDDEN;
	de.lcase = 0;
	FUNC5(sbi, ts, &time, &date, NULL);
	de.cdate = de.adate = 0;
	de.ctime = 0;
	de.ctime_cs = 0;
	de.time = time;
	de.date = date;
	de.start = FUNC2(cluster);
	de.starthi = FUNC2(cluster >> 16);
	de.size = 0;

	err = FUNC3(dir, &de, 1, sinfo);
	if (err)
		return err;

	dir->i_ctime = dir->i_mtime = *ts;
	if (FUNC0(dir))
		(void)FUNC4(dir);
	else
		FUNC6(dir);

	return 0;
}