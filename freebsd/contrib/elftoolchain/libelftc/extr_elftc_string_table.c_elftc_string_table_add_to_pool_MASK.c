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
struct TYPE_5__ {size_t st_string_pool_size; char* st_string_pool; } ;
typedef  TYPE_1__ Elftc_String_Table ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ ELFTC_STRING_TABLE_POOL_SIZE_INCREMENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 size_t FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(Elftc_String_Table *st, const char *string)
{
	char *newpool;
	size_t len, newsize, stlen;

	len = FUNC5(string) + 1; /* length, including the trailing NUL */
	stlen = FUNC0(st);

	/* Resize the pool, if needed. */
	if (stlen + len >= st->st_string_pool_size) {
		newsize = FUNC4(st->st_string_pool_size +
		    ELFTC_STRING_TABLE_POOL_SIZE_INCREMENT,
		    ELFTC_STRING_TABLE_POOL_SIZE_INCREMENT);
		if ((newpool = FUNC3(st->st_string_pool, newsize)) ==
		    NULL)
			return (0);
		st->st_string_pool = newpool;
		st->st_string_pool_size = newsize;
	}

	FUNC2(st->st_string_pool + stlen, string, len);
	FUNC1(st, stlen + len);

	return (stlen);
}