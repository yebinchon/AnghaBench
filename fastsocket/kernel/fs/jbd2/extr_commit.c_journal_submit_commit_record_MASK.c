#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  t_tid; } ;
typedef  TYPE_1__ transaction_t ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct journal_head {int dummy; } ;
struct commit_header {void** h_chksum; int /*<<< orphan*/  h_chksum_size; int /*<<< orphan*/  h_chksum_type; void* h_commit_nsec; int /*<<< orphan*/  h_commit_sec; void* h_sequence; void* h_blocktype; void* h_magic; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; scalar_t__ b_data; } ;
struct TYPE_10__ {int j_flags; } ;
typedef  TYPE_2__ journal_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int JBD2_BARRIER ; 
 int /*<<< orphan*/  JBD2_COMMIT_BLOCK ; 
 int /*<<< orphan*/  JBD2_CRC32_CHKSUM ; 
 int /*<<< orphan*/  JBD2_CRC32_CHKSUM_SIZE ; 
 int /*<<< orphan*/  JBD2_FEATURE_COMPAT_CHECKSUM ; 
 int /*<<< orphan*/  JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JBD2_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*,char*) ; 
 int WRITE_FLUSH_FUA ; 
 int WRITE_SYNC_PLUG ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct timespec FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 struct journal_head* FUNC8 (TYPE_2__*) ; 
 struct buffer_head* FUNC9 (struct journal_head*) ; 
 int /*<<< orphan*/  journal_end_buffer_io_sync ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int FUNC12 (int,struct buffer_head*) ; 

__attribute__((used)) static int FUNC13(journal_t *journal,
					transaction_t *commit_transaction,
					struct buffer_head **cbh,
					__u32 crc32_sum)
{
	struct journal_head *descriptor;
	struct commit_header *tmp;
	struct buffer_head *bh;
	int ret;
	struct timespec now = FUNC6();

	if (FUNC7(journal))
		return 0;

	descriptor = FUNC8(journal);
	if (!descriptor)
		return 1;

	bh = FUNC9(descriptor);

	tmp = (struct commit_header *)bh->b_data;
	tmp->h_magic = FUNC4(JBD2_MAGIC_NUMBER);
	tmp->h_blocktype = FUNC4(JBD2_COMMIT_BLOCK);
	tmp->h_sequence = FUNC4(commit_transaction->t_tid);
	tmp->h_commit_sec = FUNC5(now.tv_sec);
	tmp->h_commit_nsec = FUNC4(now.tv_nsec);

	if (FUNC0(journal,
				    JBD2_FEATURE_COMPAT_CHECKSUM)) {
		tmp->h_chksum_type 	= JBD2_CRC32_CHKSUM;
		tmp->h_chksum_size 	= JBD2_CRC32_CHKSUM_SIZE;
		tmp->h_chksum[0] 	= FUNC4(crc32_sum);
	}

	FUNC2(descriptor, "submit commit block");
	FUNC10(bh);
	FUNC3(bh);
	FUNC11(bh);
	bh->b_end_io = journal_end_buffer_io_sync;

	if (journal->j_flags & JBD2_BARRIER &&
	    !FUNC1(journal,
				       JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT))
		ret = FUNC12(WRITE_SYNC_PLUG | WRITE_FLUSH_FUA, bh);
	else
		ret = FUNC12(WRITE_SYNC_PLUG, bh);

	*cbh = bh;
	return ret;
}