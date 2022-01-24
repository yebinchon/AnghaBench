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
typedef  int /*<<< orphan*/  strlist_t ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int FOR_SUB_ESCAPE_BRACE ; 
 int FOR_SUB_ESCAPE_PAREN ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC6(Buffer *cmds, strlist_t *items, unsigned int item_no, char ech)
{
    const char *item = FUNC5(items, item_no);
    int len;
    char ch;

    /* If there were no escapes, or the only escape is the other variable
     * terminator, then just substitute the full string */
    if (!(FUNC4(items, item_no) &
	    (ech == ')' ? ~FOR_SUB_ESCAPE_BRACE : ~FOR_SUB_ESCAPE_PAREN))) {
	FUNC1(cmds, FUNC3(item), item);
	return;
    }

    /* Escape ':', '$', '\\' and 'ech' - removed by :U processing */
    while ((ch = *item++) != 0) {
	if (ch == '$') {
	    len = FUNC2(item);
	    if (len != 0) {
		FUNC1(cmds, len + 1, item - 1);
		item += len;
		continue;
	    }
	    FUNC0(cmds, '\\');
	} else if (ch == ':' || ch == '\\' || ch == ech)
	    FUNC0(cmds, '\\');
	FUNC0(cmds, ch);
    }
}