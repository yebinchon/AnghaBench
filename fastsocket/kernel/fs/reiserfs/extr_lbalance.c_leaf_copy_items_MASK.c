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
struct buffer_info {struct buffer_head* bi_bh; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int FIRST_TO_LAST ; 
 int LAST_TO_FIRST ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (struct buffer_info*,struct buffer_head*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_info*,struct buffer_head*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_info*,struct buffer_head*,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct buffer_info *dest_bi, struct buffer_head *src,
			   int last_first, int cpy_num, int cpy_bytes)
{
	struct buffer_head *dest;
	int pos, i, src_nr_item, bytes;

	dest = dest_bi->bi_bh;
	FUNC1(!dest || !src, "vs-10210: !dest || !src");
	FUNC1(last_first != FIRST_TO_LAST && last_first != LAST_TO_FIRST,
	       "vs-10220:last_first != FIRST_TO_LAST && last_first != LAST_TO_FIRST");
	FUNC1(FUNC0(src) < cpy_num,
	       "vs-10230: No enough items: %d, req. %d", FUNC0(src),
	       cpy_num);
	FUNC1(cpy_num < 0, "vs-10240: cpy_num < 0 (%d)", cpy_num);

	if (cpy_num == 0)
		return 0;

	if (last_first == FIRST_TO_LAST) {
		/* copy items to left */
		pos = 0;
		if (cpy_num == 1)
			bytes = cpy_bytes;
		else
			bytes = -1;

		/* copy the first item or it part or nothing to the end of the DEST (i = leaf_copy_boundary_item(DEST,SOURCE,0,bytes)) */
		i = FUNC2(dest_bi, src, FIRST_TO_LAST, bytes);
		cpy_num -= i;
		if (cpy_num == 0)
			return i;
		pos += i;
		if (cpy_bytes == -1)
			/* copy first cpy_num items starting from position 'pos' of SOURCE to end of DEST */
			FUNC3(dest_bi, src, FIRST_TO_LAST,
						 pos, cpy_num);
		else {
			/* copy first cpy_num-1 items starting from position 'pos-1' of the SOURCE to the end of the DEST */
			FUNC3(dest_bi, src, FIRST_TO_LAST,
						 pos, cpy_num - 1);

			/* copy part of the item which number is cpy_num+pos-1 to the end of the DEST */
			FUNC4(dest_bi, src, FIRST_TO_LAST,
					 cpy_num + pos - 1, cpy_bytes);
		}
	} else {
		/* copy items to right */
		src_nr_item = FUNC0(src);
		if (cpy_num == 1)
			bytes = cpy_bytes;
		else
			bytes = -1;

		/* copy the last item or it part or nothing to the begin of the DEST (i = leaf_copy_boundary_item(DEST,SOURCE,1,bytes)); */
		i = FUNC2(dest_bi, src, LAST_TO_FIRST, bytes);

		cpy_num -= i;
		if (cpy_num == 0)
			return i;

		pos = src_nr_item - cpy_num - i;
		if (cpy_bytes == -1) {
			/* starting from position 'pos' copy last cpy_num items of SOURCE to begin of DEST */
			FUNC3(dest_bi, src, LAST_TO_FIRST,
						 pos, cpy_num);
		} else {
			/* copy last cpy_num-1 items starting from position 'pos+1' of the SOURCE to the begin of the DEST; */
			FUNC3(dest_bi, src, LAST_TO_FIRST,
						 pos + 1, cpy_num - 1);

			/* copy part of the item which number is pos to the begin of the DEST */
			FUNC4(dest_bi, src, LAST_TO_FIRST, pos,
					 cpy_bytes);
		}
	}
	return i;
}