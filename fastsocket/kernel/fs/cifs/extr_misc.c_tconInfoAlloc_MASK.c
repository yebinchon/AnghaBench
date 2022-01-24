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
struct cifs_tcon {int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  tcon_list; int /*<<< orphan*/  openFileList; int /*<<< orphan*/  tc_count; int /*<<< orphan*/  tidStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CifsNew ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cifs_tcon* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tconInfoAllocCount ; 

struct cifs_tcon *
FUNC4(void)
{
	struct cifs_tcon *ret_buf;
	ret_buf = FUNC2(sizeof(struct cifs_tcon), GFP_KERNEL);
	if (ret_buf) {
		FUNC1(&tconInfoAllocCount);
		ret_buf->tidStatus = CifsNew;
		++ret_buf->tc_count;
		FUNC0(&ret_buf->openFileList);
		FUNC0(&ret_buf->tcon_list);
#ifdef CONFIG_CIFS_STATS
		spin_lock_init(&ret_buf->stat_lock);
#endif
	}
	return ret_buf;
}