#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; TYPE_2__* i_sb; } ;
struct ext3_dir_entry_2 {int name_len; int /*<<< orphan*/  inode; int /*<<< orphan*/  rec_len; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_7__ {TYPE_1__* s_es; } ;
struct TYPE_6__ {int s_blocksize; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_inodes_count; } ;

/* Variables and functions */
 int const FUNC0 (int) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,char*,int /*<<< orphan*/ ,char const*,unsigned long,unsigned long,int const,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6 (const char * function, struct inode * dir,
			  struct ext3_dir_entry_2 * de,
			  struct buffer_head * bh,
			  unsigned long offset)
{
	const char * error_msg = NULL;
	const int rlen = FUNC3(de->rec_len);

	if (FUNC5(rlen < FUNC0(1)))
		error_msg = "rec_len is smaller than minimal";
	else if (FUNC5(rlen % 4 != 0))
		error_msg = "rec_len % 4 != 0";
	else if (FUNC5(rlen < FUNC0(de->name_len)))
		error_msg = "rec_len is too small for name_len";
	else if (FUNC5((((char *) de - bh->b_data) + rlen > dir->i_sb->s_blocksize)))
		error_msg = "directory entry across blocks";
	else if (FUNC5(FUNC4(de->inode) >
			FUNC4(FUNC1(dir->i_sb)->s_es->s_inodes_count)))
		error_msg = "inode out of bounds";

	if (FUNC5(error_msg != NULL))
		FUNC2 (dir->i_sb, function,
			"bad entry in directory #%lu: %s - "
			"offset=%lu, inode=%lu, rec_len=%d, name_len=%d",
			dir->i_ino, error_msg, offset,
			(unsigned long) FUNC4(de->inode),
			rlen, de->name_len);

	return error_msg == NULL ? 1 : 0;
}