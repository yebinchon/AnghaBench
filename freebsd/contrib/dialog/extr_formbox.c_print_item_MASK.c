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
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_5__ {int name_len; int text_len; scalar_t__ text_x; scalar_t__ text_y; int /*<<< orphan*/  text; scalar_t__ name_x; scalar_t__ name_y; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ DIALOG_FORMITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  form_active_text_attr ; 
 int /*<<< orphan*/  form_item_readonly_attr ; 
 int /*<<< orphan*/  form_text_attr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  menubox_attr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC7(WINDOW *win, DIALOG_FORMITEM * item, int scrollamt, bool choice)
{
    int count = 0;
    int len;

    if (FUNC6(win, scrollamt, item->name_y, item->name_x)) {
	len = item->name_len;
	len = FUNC0(len, FUNC2(win) - item->name_x);
	if (len > 0) {
	    FUNC1(win,
			    item->name,
			    0,
			    menubox_attr,
			    item->name_y - scrollamt,
			    item->name_x,
			    len,
			    FALSE,
			    FALSE);
	    FUNC5(win, item->name_y - scrollamt, item->name_x + len);
	    count = 1;
	}
    }
    if (item->text_len && FUNC6(win, scrollamt, item->text_y, item->text_x)) {
	chtype this_item_attribute;

	len = item->text_len;
	len = FUNC0(len, FUNC2(win) - item->text_x);

	if (!FUNC4(item)) {
	    this_item_attribute = choice
		? form_active_text_attr
		: form_text_attr;
	} else {
	    this_item_attribute = form_item_readonly_attr;
	}

	if (len > 0) {
	    FUNC1(win,
			    item->text,
			    0,
			    this_item_attribute,
			    item->text_y - scrollamt,
			    item->text_x,
			    len,
			    FUNC3(item),
			    FALSE);
	    FUNC5(win, item->text_y - scrollamt, item->text_x + len);
	    count = 1;
	}
    }
    return count;
}