#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  t_tid; } ;
typedef  TYPE_1__ transaction_t ;
struct journal_head {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_9__ {int j_flags; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_10__ {void* h_sequence; void* h_blocktype; void* h_magic; } ;
typedef  TYPE_3__ journal_header_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int JFS_BARRIER ; 
 int /*<<< orphan*/  JFS_COMMIT_BLOCK ; 
 int /*<<< orphan*/  JFS_MAGIC_NUMBER ; 
 int WRITE_FLUSH_FUA ; 
 int WRITE_SYNC ; 
 int FUNC1 (struct buffer_head*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 struct buffer_head* FUNC4 (struct journal_head*) ; 
 struct journal_head* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int FUNC9 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC10(journal_t *journal,
					transaction_t *commit_transaction)
{
	struct journal_head *descriptor;
	struct buffer_head *bh;
	journal_header_t *header;
	int ret;

	if (FUNC3(journal))
		return 0;

	descriptor = FUNC5(journal);
	if (!descriptor)
		return 1;

	bh = FUNC4(descriptor);

	header = (journal_header_t *)(bh->b_data);
	header->h_magic = FUNC2(JFS_MAGIC_NUMBER);
	header->h_blocktype = FUNC2(JFS_COMMIT_BLOCK);
	header->h_sequence = FUNC2(commit_transaction->t_tid);

	FUNC0(descriptor, "write commit block");
	FUNC8(bh);

	if (journal->j_flags & JFS_BARRIER)
		ret = FUNC1(bh, WRITE_SYNC | WRITE_FLUSH_FUA);
	else
		ret = FUNC9(bh);

	FUNC7(bh);		/* One for getblk() */
	FUNC6(descriptor);

	return (ret == -EIO);
}