#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct worddest {scalar_t__ state; TYPE_1__* list; } ;
struct TYPE_3__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int EXP_GLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char,char*) ; 
 scalar_t__ WORD_IDLE ; 
 scalar_t__ WORD_QUOTEMARK ; 
 scalar_t__ WORD_WS_DELIMITED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 char* FUNC5 () ; 

__attribute__((used)) static char *
FUNC6(char c, int flag, char *p, struct worddest *dst)
{
	int is_ws;

	is_ws = c == '\t' || c == '\n' || c == ' ';
	if (p != FUNC5() || (is_ws ? dst->state == WORD_QUOTEMARK :
	    dst->state != WORD_WS_DELIMITED) || c == '\0') {
		FUNC1('\0', p);
		if (flag & EXP_GLOB)
			FUNC3(FUNC4(p), dst->list);
		else
			FUNC2(dst->list, FUNC4(p));
		dst->state = is_ws ? WORD_WS_DELIMITED : WORD_IDLE;
	} else if (!is_ws && dst->state == WORD_WS_DELIMITED)
		dst->state = WORD_IDLE;
	/* Reserve space while the stack string is empty. */
	FUNC2(dst->list, NULL);
	dst->list->count--;
	FUNC0(p);
	return p;
}