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
struct _Elftc_String_Table_Entry {scalar_t__ ste_idx; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  Elftc_String_Table ;

/* Variables and functions */
 int ELFTC_FAILURE ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ELFTC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct _Elftc_String_Table_Entry* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

int
FUNC4(Elftc_String_Table *st, const char *string)
{
	struct _Elftc_String_Table_Entry *ste;
	ssize_t idx;

	ste = FUNC3(st, string, NULL);

	if (ste == NULL || (idx = ste->ste_idx) < 0)
		return (ELFTC_FAILURE);

	FUNC2(idx > 0 && (size_t)idx < FUNC0(st));

	ste->ste_idx = -idx;

	FUNC1(st);

	return (ELFTC_SUCCESS);
}