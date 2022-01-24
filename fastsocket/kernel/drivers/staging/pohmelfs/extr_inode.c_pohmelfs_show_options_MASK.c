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
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct seq_file {int dummy; } ;
struct pohmelfs_sb {scalar_t__ crypto_fail_unsupported; int /*<<< orphan*/  mcache_timeout; int /*<<< orphan*/  trans_max_pages; int /*<<< orphan*/  crypto_thread_num; int /*<<< orphan*/  trans_retries; int /*<<< orphan*/  wait_on_page_timeout; int /*<<< orphan*/  drop_scan_timeout; int /*<<< orphan*/  trans_scan_timeout; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 struct pohmelfs_sb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, struct vfsmount *vfs)
{
	struct pohmelfs_sb *psb = FUNC0(vfs->mnt_sb);

	FUNC2(seq, ",idx=%u", psb->idx);
	FUNC2(seq, ",trans_scan_timeout=%u", FUNC1(psb->trans_scan_timeout));
	FUNC2(seq, ",drop_scan_timeout=%u", FUNC1(psb->drop_scan_timeout));
	FUNC2(seq, ",wait_on_page_timeout=%u", FUNC1(psb->wait_on_page_timeout));
	FUNC2(seq, ",trans_retries=%u", psb->trans_retries);
	FUNC2(seq, ",crypto_thread_num=%u", psb->crypto_thread_num);
	FUNC2(seq, ",trans_max_pages=%u", psb->trans_max_pages);
	FUNC2(seq, ",mcache_timeout=%u", FUNC1(psb->mcache_timeout));
	if (psb->crypto_fail_unsupported)
		FUNC2(seq, ",crypto_fail_unsupported");

	return 0;
}