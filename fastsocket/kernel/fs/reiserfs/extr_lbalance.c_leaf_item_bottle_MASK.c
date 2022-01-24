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
struct item_head {int /*<<< orphan*/  ih_version; int /*<<< orphan*/  ih_key; } ;
struct buffer_info {struct buffer_head* bi_bh; } ;
struct buffer_head {int b_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*,int) ; 
 struct item_head* FUNC2 (struct buffer_head*,int) ; 
 int FIRST_TO_LAST ; 
 int /*<<< orphan*/  IH_SIZE ; 
 scalar_t__ FUNC3 (struct item_head*) ; 
 int LAST_TO_FIRST ; 
 scalar_t__ MAX_US_INT ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  SHORT_KEY_SIZE ; 
 int /*<<< orphan*/  TYPE_DIRECT ; 
 int /*<<< orphan*/  TYPE_INDIRECT ; 
 int UNFM_P_SIZE ; 
 scalar_t__ FUNC5 (struct item_head*) ; 
 int FUNC6 (struct item_head*) ; 
 scalar_t__ FUNC7 (struct item_head*) ; 
 scalar_t__ FUNC8 (struct item_head*) ; 
 scalar_t__ FUNC9 (struct item_head*) ; 
 scalar_t__ FUNC10 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_info*,struct buffer_head*,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_info*,int /*<<< orphan*/ ,struct item_head*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct item_head*,struct item_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct item_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct item_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct item_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct buffer_info *dest_bi,
			     struct buffer_head *src, int last_first,
			     int item_num, int cpy_bytes)
{
	struct buffer_head *dest = dest_bi->bi_bh;
	struct item_head *ih;

	FUNC4(cpy_bytes == -1,
	       "vs-10170: bytes == - 1 means: do not split item");

	if (last_first == FIRST_TO_LAST) {
		/* if ( if item in position item_num in buffer SOURCE is directory item ) */
		ih = FUNC2(src, item_num);
		if (FUNC8(ih))
			FUNC11(dest_bi, src, FIRST_TO_LAST,
					      item_num, 0, cpy_bytes);
		else {
			struct item_head n_ih;

			/* copy part of the body of the item number 'item_num' of SOURCE to the end of the DEST
			   part defined by 'cpy_bytes'; create new item header; change old item_header (????);
			   n_ih = new item_header;
			 */
			FUNC13(&n_ih, ih, IH_SIZE);
			FUNC15(&n_ih, cpy_bytes);
			if (FUNC9(ih)) {
				FUNC4(cpy_bytes == FUNC6(ih)
				       && FUNC5(ih),
				       "vs-10180: when whole indirect item is bottle to left neighbor, it must have free_space==0 (not %lu)",
				       (long unsigned)FUNC5(ih));
				FUNC16(&n_ih, 0);
			}

			FUNC4(FUNC14(&(ih->ih_key), src->b_size),
			       "vs-10190: bad mergeability of item %h", ih);
			n_ih.ih_version = ih->ih_version;	/* JDM Endian safe, both le */
			FUNC12(dest_bi, FUNC0(dest), &n_ih,
					     FUNC1(src, item_num), 0);
		}
	} else {
		/*  if ( if item in position item_num in buffer SOURCE is directory item ) */
		ih = FUNC2(src, item_num);
		if (FUNC8(ih))
			FUNC11(dest_bi, src, LAST_TO_FIRST,
					      item_num,
					      FUNC3(ih) - cpy_bytes,
					      cpy_bytes);
		else {
			struct item_head n_ih;

			/* copy part of the body of the item number 'item_num' of SOURCE to the begin of the DEST
			   part defined by 'cpy_bytes'; create new item header;
			   n_ih = new item_header;
			 */
			FUNC13(&n_ih, ih, SHORT_KEY_SIZE);

			n_ih.ih_version = ih->ih_version;	/* JDM Endian safe, both le */

			if (FUNC7(ih)) {
				FUNC17(&n_ih,
						   FUNC10(ih) +
						   FUNC6(ih) - cpy_bytes);
				FUNC18(&n_ih, TYPE_DIRECT);
				FUNC16(&n_ih, MAX_US_INT);
			} else {
				/* indirect item */
				FUNC4(!cpy_bytes && FUNC5(ih),
				       "vs-10200: ih->ih_free_space must be 0 when indirect item will be appended");
				FUNC17(&n_ih,
						   FUNC10(ih) +
						   (FUNC6(ih) -
						    cpy_bytes) / UNFM_P_SIZE *
						   dest->b_size);
				FUNC18(&n_ih, TYPE_INDIRECT);
				FUNC16(&n_ih, FUNC5(ih));
			}

			/* set item length */
			FUNC15(&n_ih, cpy_bytes);

			n_ih.ih_version = ih->ih_version;	/* JDM Endian safe, both le */

			FUNC12(dest_bi, 0, &n_ih,
					     FUNC1(src,
						       item_num) +
					     FUNC6(ih) - cpy_bytes, 0);
		}
	}
}