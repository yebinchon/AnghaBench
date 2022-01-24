#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct buffer_head {char* b_data; } ;
struct TYPE_5__ {int j_blocksize; } ;
typedef  TYPE_1__ journal_t ;
typedef  int /*<<< orphan*/  journal_header_t ;
struct TYPE_6__ {int t_flags; } ;
typedef  TYPE_2__ journal_block_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  JBD2_FLAG_LAST_TAG ; 
 int /*<<< orphan*/  JBD2_FLAG_SAME_UUID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(journal_t *journal, struct buffer_head *bh)
{
	char *			tagp;
	journal_block_tag_t *	tag;
	int			nr = 0, size = journal->j_blocksize;
	int			tag_bytes = FUNC1(journal);

	tagp = &bh->b_data[sizeof(journal_header_t)];

	while ((tagp - bh->b_data + tag_bytes) <= size) {
		tag = (journal_block_tag_t *) tagp;

		nr++;
		tagp += tag_bytes;
		if (!(tag->t_flags & FUNC0(JBD2_FLAG_SAME_UUID)))
			tagp += 16;

		if (tag->t_flags & FUNC0(JBD2_FLAG_LAST_TAG))
			break;
	}

	return nr;
}