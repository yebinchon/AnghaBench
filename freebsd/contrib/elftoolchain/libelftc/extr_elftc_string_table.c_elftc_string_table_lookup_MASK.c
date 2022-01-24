#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _Elftc_String_Table_Entry {size_t ste_idx; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int st_nbuckets; } ;
typedef  TYPE_1__ Elftc_String_Table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct _Elftc_String_Table_Entry* FUNC1 (TYPE_1__*,char const*,int*) ; 

size_t
FUNC2(Elftc_String_Table *st, const char *string)
{
	struct _Elftc_String_Table_Entry *ste;
	ssize_t idx;
	int hashindex;

	ste = FUNC1(st, string, &hashindex);

	FUNC0(hashindex >= 0 && hashindex < st->st_nbuckets);

	if (ste == NULL || (idx = ste->ste_idx) < 0)
		return (0);

	return (idx);
}