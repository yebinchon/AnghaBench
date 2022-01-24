#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _Elftc_String_Table_Entry {size_t ste_idx; } ;
typedef  size_t ssize_t ;
struct TYPE_5__ {int st_nbuckets; int /*<<< orphan*/ * st_buckets; } ;
typedef  TYPE_1__ Elftc_String_Table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct _Elftc_String_Table_Entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (TYPE_1__*,char const*) ; 
 struct _Elftc_String_Table_Entry* FUNC3 (TYPE_1__*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct _Elftc_String_Table_Entry*) ; 
 struct _Elftc_String_Table_Entry* FUNC5 (int) ; 
 int /*<<< orphan*/  ste_next ; 

size_t
FUNC6(Elftc_String_Table *st, const char *string)
{
	struct _Elftc_String_Table_Entry *ste;
	ssize_t idx;
	int hashindex;

	hashindex = 0;

	ste = FUNC3(st, string, &hashindex);

	FUNC1(hashindex >= 0 && hashindex < st->st_nbuckets);

	if (ste == NULL) {
		if ((ste = FUNC5(sizeof(*ste))) == NULL)
			return (0);
		if ((ste->ste_idx = FUNC2(st,
		    string)) == 0) {
			FUNC4(ste);
			return (0);
		}

		FUNC0(&st->st_buckets[hashindex], ste, ste_next);
	}

	idx = ste->ste_idx;
	if (idx < 0) 		/* Undelete. */
		ste->ste_idx = idx = -idx;

	return (idx);
}