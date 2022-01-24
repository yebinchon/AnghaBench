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
struct _Elftc_String_Table_Bucket {int dummy; } ;
struct _Elftc_String_Table {char* st_string_pool; int st_nbuckets; size_t st_string_pool_size; scalar_t__ st_len; int /*<<< orphan*/ * st_buckets; } ;
typedef  struct _Elftc_String_Table Elftc_String_Table ;

/* Variables and functions */
 size_t ELFTC_STRING_TABLE_DEFAULT_SIZE ; 
 size_t ELFTC_STRING_TABLE_EXPECTED_CHAIN_LENGTH ; 
 size_t ELFTC_STRING_TABLE_EXPECTED_STRING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct _Elftc_String_Table*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct _Elftc_String_Table*) ; 
 void* FUNC3 (size_t) ; 

Elftc_String_Table *
FUNC4(size_t sizehint)
{
	struct _Elftc_String_Table *st;
	int n, nbuckets, tablesize;

	if (sizehint < ELFTC_STRING_TABLE_DEFAULT_SIZE)
		sizehint = ELFTC_STRING_TABLE_DEFAULT_SIZE;

	nbuckets = sizehint / (ELFTC_STRING_TABLE_EXPECTED_CHAIN_LENGTH *
	    ELFTC_STRING_TABLE_EXPECTED_STRING_SIZE);

	tablesize = sizeof(struct _Elftc_String_Table) +
	    nbuckets * sizeof(struct _Elftc_String_Table_Bucket);

	if ((st = FUNC3(tablesize)) == NULL)
		return (NULL);
	if ((st->st_string_pool = FUNC3(sizehint)) == NULL) {
		FUNC2(st);
		return (NULL);
	}

	for (n = 0; n < nbuckets; n++)
		FUNC1(&st->st_buckets[n]);

	st->st_len = 0;
	st->st_nbuckets = nbuckets;
	st->st_string_pool_size = sizehint;
	*st->st_string_pool = '\0';
	FUNC0(st, 1);

	return (st);
}