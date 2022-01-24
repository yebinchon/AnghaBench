#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct _Elftc_String_Table_Entry {size_t ste_idx; } ;
struct _Elftc_String_Table_Bucket {int dummy; } ;
struct TYPE_7__ {int st_len; char const* st_string_pool; struct _Elftc_String_Table_Bucket* st_buckets; } ;
typedef  TYPE_1__ Elftc_String_Table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int ELFTC_STRING_TABLE_COMPACTION_FLAG ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct _Elftc_String_Table_Bucket*,struct _Elftc_String_Table_Entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _Elftc_String_Table_Entry ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct _Elftc_String_Table_Entry* FUNC5 (TYPE_1__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct _Elftc_String_Table_Entry*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  ste_next ; 
 int FUNC8 (char*) ; 

const char *
FUNC9(Elftc_String_Table *st, size_t *size)
{
	char *r, *s, *end;
	struct _Elftc_String_Table_Entry *ste;
	struct _Elftc_String_Table_Bucket *head;
	size_t copied, offset, length, newsize;
	int hashindex;

	/*
	 * For the common case of a string table has not seen
	 * a string deletion, we can just export the current
	 * pool.
	 */
	if ((st->st_len & ELFTC_STRING_TABLE_COMPACTION_FLAG) == 0) {
		if (size)
			*size = FUNC1(st);
		return (st->st_string_pool);
	}

	/*
	 * Otherwise, compact the string table in-place.
	 */
	FUNC4(*st->st_string_pool == '\0');

	newsize = 1;
	end = st->st_string_pool + FUNC1(st);

	for (r = s = st->st_string_pool + 1;
	     s < end;
	     s += length, r += copied) {

		copied = 0;
		length = FUNC8(s) + 1;

		ste = FUNC5(st, s,
		    &hashindex);
		head = &st->st_buckets[hashindex];

		FUNC4(ste != NULL);

		/* Ignore deleted strings. */
		if (ste->ste_idx < 0) {
			FUNC3(head, ste, _Elftc_String_Table_Entry,
			    ste_next);
			FUNC6(ste);
			continue;
		}

		/* Move 'live' strings up. */
		offset = newsize;
		newsize += length;
		copied = length;

		if (r == s)	/* Nothing removed yet. */
			continue;

		FUNC7(r, s, copied);

		/* Update the index for this entry. */
		ste->ste_idx = offset;
	}

	FUNC0(st);
	FUNC2(st, newsize);

	if (size)
		*size = newsize;

	return (st->st_string_pool);
}