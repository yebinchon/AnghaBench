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
struct ubifs_znode {struct ubifs_znode* cnext; int /*<<< orphan*/  child_cnt; } ;
struct ubifs_info {int leb_size; int ileb_len; int min_io_size; scalar_t__ ileb_buf; struct ubifs_znode* enext; struct ubifs_znode* cnext; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int,int) ; 
 int FUNC2 (struct ubifs_info*,scalar_t__,struct ubifs_znode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, int lnum, int gap_start, int gap_end,
		    int *dirt)
{
	int len, gap_remains, gap_pos, written, pad_len;

	FUNC3((gap_start & 7) == 0);
	FUNC3((gap_end & 7) == 0);
	FUNC3(gap_end >= gap_start);

	gap_remains = gap_end - gap_start;
	if (!gap_remains)
		return 0;
	gap_pos = gap_start;
	written = 0;
	while (c->enext) {
		len = FUNC4(c, c->enext->child_cnt);
		if (len < gap_remains) {
			struct ubifs_znode *znode = c->enext;
			const int alen = FUNC0(len, 8);
			int err;

			FUNC3(alen <= gap_remains);
			err = FUNC2(c, c->ileb_buf + gap_pos, znode,
					    lnum, gap_pos, len);
			if (err)
				return err;
			gap_remains -= alen;
			gap_pos += alen;
			c->enext = znode->cnext;
			if (c->enext == c->cnext)
				c->enext = NULL;
			written += 1;
		} else
			break;
	}
	if (gap_end == c->leb_size) {
		c->ileb_len = FUNC0(gap_pos, c->min_io_size);
		/* Pad to end of min_io_size */
		pad_len = c->ileb_len - gap_pos;
	} else
		/* Pad to end of gap */
		pad_len = gap_remains;
	FUNC1("LEB %d:%d to %d len %d nodes written %d wasted bytes %d",
	       lnum, gap_start, gap_end, gap_end - gap_start, written, pad_len);
	FUNC5(c, c->ileb_buf + gap_pos, pad_len);
	*dirt += pad_len;
	return written;
}