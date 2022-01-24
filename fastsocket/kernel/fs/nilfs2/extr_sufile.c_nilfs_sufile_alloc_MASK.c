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
struct nilfs_sufile_header {int /*<<< orphan*/  sh_last_alloc; int /*<<< orphan*/  sh_ndirtysegs; int /*<<< orphan*/  sh_ncleansegs; } ;
struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int __u64 ;
struct TYPE_2__ {size_t mi_entry_size; int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  KM_USER0 ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct nilfs_segment_usage*) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_segment_usage*) ; 
 struct nilfs_sufile_header* FUNC12 (struct inode*,struct buffer_head*,void*) ; 
 struct nilfs_segment_usage* FUNC13 (struct inode*,int,struct buffer_head*,void*) ; 
 int FUNC14 (struct inode*,struct buffer_head**) ; 
 unsigned long FUNC15 (struct inode*) ; 
 int FUNC16 (struct inode*,int,int,struct buffer_head**) ; 
 unsigned long FUNC17 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct inode *sufile, __u64 *segnump)
{
	struct buffer_head *header_bh, *su_bh;
	struct nilfs_sufile_header *header;
	struct nilfs_segment_usage *su;
	size_t susz = FUNC0(sufile)->mi_entry_size;
	__u64 segnum, maxsegnum, last_alloc;
	void *kaddr;
	unsigned long nsegments, ncleansegs, nsus;
	int ret, i, j;

	FUNC3(&FUNC0(sufile)->mi_sem);

	ret = FUNC14(sufile, &header_bh);
	if (ret < 0)
		goto out_sem;
	kaddr = FUNC4(header_bh->b_page, KM_USER0);
	header = FUNC12(sufile, header_bh, kaddr);
	ncleansegs = FUNC7(header->sh_ncleansegs);
	last_alloc = FUNC7(header->sh_last_alloc);
	FUNC5(kaddr, KM_USER0);

	nsegments = FUNC15(sufile);
	segnum = last_alloc + 1;
	maxsegnum = nsegments - 1;
	for (i = 0; i < nsegments; i += nsus) {
		if (segnum >= nsegments) {
			/* wrap around */
			segnum = 0;
			maxsegnum = last_alloc;
		}
		ret = FUNC16(sufile, segnum, 1,
							   &su_bh);
		if (ret < 0)
			goto out_header;
		kaddr = FUNC4(su_bh->b_page, KM_USER0);
		su = FUNC13(
			sufile, segnum, su_bh, kaddr);

		nsus = FUNC17(
			sufile, segnum, maxsegnum);
		for (j = 0; j < nsus; j++, su = (void *)su + susz, segnum++) {
			if (!FUNC10(su))
				continue;
			/* found a clean segment */
			FUNC11(su);
			FUNC5(kaddr, KM_USER0);

			kaddr = FUNC4(header_bh->b_page, KM_USER0);
			header = FUNC12(
				sufile, header_bh, kaddr);
			FUNC6(&header->sh_ncleansegs, -1);
			FUNC6(&header->sh_ndirtysegs, 1);
			header->sh_last_alloc = FUNC2(segnum);
			FUNC5(kaddr, KM_USER0);

			FUNC8(header_bh);
			FUNC8(su_bh);
			FUNC9(sufile);
			FUNC1(su_bh);
			*segnump = segnum;
			goto out_header;
		}

		FUNC5(kaddr, KM_USER0);
		FUNC1(su_bh);
	}

	/* no segments left */
	ret = -ENOSPC;

 out_header:
	FUNC1(header_bh);

 out_sem:
	FUNC18(&FUNC0(sufile)->mi_sem);
	return ret;
}