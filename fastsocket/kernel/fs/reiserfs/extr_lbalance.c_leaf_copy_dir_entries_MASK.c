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
struct reiserfs_de_head {int dummy; } ;
struct item_head {int /*<<< orphan*/  ih_key; } ;
struct buffer_info {struct buffer_head* bi_bh; } ;
struct buffer_head {char* b_data; } ;

/* Variables and functions */
 struct reiserfs_de_head* FUNC0 (struct buffer_head*,struct item_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 struct item_head* FUNC2 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int) ; 
 int DEH_SIZE ; 
 scalar_t__ DOT_OFFSET ; 
 int FIRST_TO_LAST ; 
 int FUNC4 (struct item_head*) ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  KEY_SIZE ; 
 int LAST_TO_FIRST ; 
 int /*<<< orphan*/  MAX_US_INT ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  TYPE_DIRENTRY ; 
 int /*<<< orphan*/  U32_MAX ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct reiserfs_de_head*) ; 
 int FUNC9 (struct item_head*) ; 
 int FUNC10 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct item_head*) ; 
 scalar_t__ FUNC12 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_info*,int,struct item_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_info*,int,int,int,struct reiserfs_de_head*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_info*,int,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct item_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct item_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct item_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22(struct buffer_info *dest_bi,
				  struct buffer_head *source, int last_first,
				  int item_num, int from, int copy_count)
{
	struct buffer_head *dest = dest_bi->bi_bh;
	int item_num_in_dest;	/* either the number of target item,
				   or if we must create a new item,
				   the number of the item we will
				   create it next to */
	struct item_head *ih;
	struct reiserfs_de_head *deh;
	int copy_records_len;	/* length of all records in item to be copied */
	char *records;

	ih = FUNC2(source, item_num);

	FUNC5(!FUNC11(ih), "vs-10000: item must be directory item");

	/* length of all record to be copied and first byte of the last of them */
	deh = FUNC0(source, ih);
	if (copy_count) {
		copy_records_len = (from ? FUNC7(&(deh[from - 1])) :
				    FUNC9(ih)) -
		    FUNC7(&(deh[from + copy_count - 1]));
		records =
		    source->b_data + FUNC10(ih) +
		    FUNC7(&(deh[from + copy_count - 1]));
	} else {
		copy_records_len = 0;
		records = NULL;
	}

	/* when copy last to first, dest buffer can contain 0 items */
	item_num_in_dest =
	    (last_first ==
	     LAST_TO_FIRST) ? ((FUNC1(dest)) ? 0 : -1) : (FUNC1(dest)
							       - 1);

	/* if there are no items in dest or the first/last item in dest is not item of the same directory */
	if ((item_num_in_dest == -1) ||
	    (last_first == FIRST_TO_LAST && FUNC12(ih) == DOT_OFFSET) ||
	    (last_first == LAST_TO_FIRST
	     && FUNC6 /*COMP_SHORT_KEYS */ (&ih->ih_key,
							 FUNC3(dest,
								  item_num_in_dest))))
	{
		/* create new item in dest */
		struct item_head new_ih;

		/* form item header */
		FUNC16(&new_ih.ih_key, &ih->ih_key, KEY_SIZE);
		FUNC19(&new_ih, KEY_FORMAT_3_5);
		/* calculate item len */
		FUNC18(&new_ih,
				DEH_SIZE * copy_count + copy_records_len);
		FUNC17(&new_ih, 0);

		if (last_first == LAST_TO_FIRST) {
			/* form key by the following way */
			if (from < FUNC4(ih)) {
				FUNC20(&new_ih,
						   FUNC8(&(deh[from])));
				/*memcpy (&new_ih.ih_key.k_offset, &deh[from].deh_offset, SHORT_KEY_SIZE); */
			} else {
				/* no entries will be copied to this item in this function */
				FUNC20(&new_ih, U32_MAX);
				/* this item is not yet valid, but we want I_IS_DIRECTORY_ITEM to return 1 for it, so we -1 */
			}
			FUNC21(KEY_FORMAT_3_5, &(new_ih.ih_key),
					  TYPE_DIRENTRY);
		}

		/* insert item into dest buffer */
		FUNC13(dest_bi,
				     (last_first ==
				      LAST_TO_FIRST) ? 0 : FUNC1(dest),
				     &new_ih, NULL, 0);
	} else {
		/* prepare space for entries */
		FUNC15(dest_bi,
				     (last_first ==
				      FIRST_TO_LAST) ? (FUNC1(dest) -
							1) : 0, MAX_US_INT,
				     DEH_SIZE * copy_count + copy_records_len,
				     records, 0);
	}

	item_num_in_dest =
	    (last_first == FIRST_TO_LAST) ? (FUNC1(dest) - 1) : 0;

	FUNC14(dest_bi, item_num_in_dest,
			   (last_first ==
			    FIRST_TO_LAST) ? FUNC4(FUNC2(dest,
									  item_num_in_dest))
			   : 0, copy_count, deh + from, records,
			   DEH_SIZE * copy_count + copy_records_len);
}