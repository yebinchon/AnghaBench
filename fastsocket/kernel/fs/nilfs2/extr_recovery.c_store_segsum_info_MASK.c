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
struct nilfs_segsum_info {void* nsumblk; void* nblocks; void* nfileblk; void* sumbytes; void* nfinfo; void* next; void* ctime; void* seg_seq; int /*<<< orphan*/  flags; } ;
struct nilfs_segment_summary {int /*<<< orphan*/  ss_sumbytes; int /*<<< orphan*/  ss_nfinfo; int /*<<< orphan*/  ss_nblocks; int /*<<< orphan*/  ss_next; int /*<<< orphan*/  ss_create; int /*<<< orphan*/  ss_seq; int /*<<< orphan*/  ss_flags; } ;

/* Variables and functions */
 void* FUNC0 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_segsum_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nilfs_segsum_info *ssi,
			      struct nilfs_segment_summary *sum,
			      unsigned int blocksize)
{
	ssi->flags = FUNC2(sum->ss_flags);
	ssi->seg_seq = FUNC4(sum->ss_seq);
	ssi->ctime = FUNC4(sum->ss_create);
	ssi->next = FUNC4(sum->ss_next);
	ssi->nblocks = FUNC3(sum->ss_nblocks);
	ssi->nfinfo = FUNC3(sum->ss_nfinfo);
	ssi->sumbytes = FUNC3(sum->ss_sumbytes);

	ssi->nsumblk = FUNC0(ssi->sumbytes, blocksize);
	ssi->nfileblk = ssi->nblocks - ssi->nsumblk - !!FUNC1(ssi);
}