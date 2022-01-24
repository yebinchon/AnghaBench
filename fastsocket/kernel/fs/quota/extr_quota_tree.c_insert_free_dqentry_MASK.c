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
typedef  scalar_t__ uint ;
struct qtree_mem_dqinfo {int /*<<< orphan*/  dqi_type; int /*<<< orphan*/  dqi_sb; scalar_t__ dqi_free_entry; int /*<<< orphan*/  dqi_usable_bs; } ;
struct qt_disk_dqdbheader {void* dqdh_prev_free; void* dqdh_next_free; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qtree_mem_dqinfo*,scalar_t__,char*) ; 
 int FUNC5 (struct qtree_mem_dqinfo*,scalar_t__,char*) ; 

__attribute__((used)) static int FUNC6(struct qtree_mem_dqinfo *info, char *buf,
			       uint blk)
{
	char *tmpbuf = FUNC1(info->dqi_usable_bs);
	struct qt_disk_dqdbheader *dh = (struct qt_disk_dqdbheader *)buf;
	int err;

	if (!tmpbuf)
		return -ENOMEM;
	dh->dqdh_next_free = FUNC0(info->dqi_free_entry);
	dh->dqdh_prev_free = FUNC0(0);
	err = FUNC5(info, blk, buf);
	if (err < 0)
		goto out_buf;
	if (info->dqi_free_entry) {
		err = FUNC4(info, info->dqi_free_entry, tmpbuf);
		if (err < 0)
			goto out_buf;
		((struct qt_disk_dqdbheader *)tmpbuf)->dqdh_prev_free =
							FUNC0(blk);
		err = FUNC5(info, info->dqi_free_entry, tmpbuf);
		if (err < 0)
			goto out_buf;
	}
	FUNC2(tmpbuf);
	info->dqi_free_entry = blk;
	FUNC3(info->dqi_sb, info->dqi_type);
	return 0;
out_buf:
	FUNC2(tmpbuf);
	return err;
}