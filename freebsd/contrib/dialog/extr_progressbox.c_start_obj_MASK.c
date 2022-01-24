#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  win; } ;
struct TYPE_5__ {char* prompt; int high; int /*<<< orphan*/  text; TYPE_1__ obj; scalar_t__ wide; } ;
typedef  TYPE_2__ MY_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  FALSE ; 
 int MARGIN ; 
 int /*<<< orphan*/  MIN_HIGH ; 
 int /*<<< orphan*/  MIN_WIDE ; 
 int /*<<< orphan*/  border2_attr ; 
 int /*<<< orphan*/  border_attr ; 
 int /*<<< orphan*/  dialog_attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 char* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC23(MY_OBJ * obj, const char *title, const char *cprompt)
{
    int y, x, thigh;
    int i;

    obj->prompt = FUNC13(cprompt);
    FUNC15(obj->prompt);
    FUNC2(title, obj->prompt, &obj->high, &obj->wide, MIN_HIGH, MIN_WIDE);

    FUNC12(obj->high, obj->wide);
    FUNC6(obj->high, obj->wide);

    x = FUNC3(obj->wide);
    y = FUNC4(obj->high);
    thigh = obj->high - (2 * MARGIN);

    obj->obj.win = FUNC10(obj->high, obj->wide, y, x);

    FUNC7(obj->obj.win,
		  0, 0,
		  obj->high, obj->wide,
		  dialog_attr,
		  border_attr,
		  border2_attr);
    FUNC9(obj->obj.win, title);
    FUNC8(obj->obj.win, FALSE);

    if (obj->prompt[0] != '\0') {
	int y2, x2;

	FUNC1(obj->obj.win, dialog_attr);
	FUNC11(obj->obj.win, obj->prompt, obj->high, obj->wide);
	FUNC18(obj->obj.win, y2, x2);
	(void) x2;
	++y2;
	FUNC20(obj->obj.win, y2, MARGIN);
	for (i = 0; i < FUNC16(obj->obj.win) - 2 * MARGIN; i++)
	    (void) FUNC19(obj->obj.win, FUNC5(ACS_HLINE));
	y += y2;
	thigh -= y2;
    }

    /* Create window for text region, used for scrolling text */
    obj->text = FUNC14(obj->obj.win,
			       thigh,
			       obj->wide - (2 * MARGIN),
			       y + MARGIN,
			       x + MARGIN);

    (void) FUNC22(obj->obj.win);

    (void) FUNC20(obj->obj.win, FUNC17(obj->text), (MARGIN + 1));
    (void) FUNC21(obj->obj.win);

    FUNC0(obj->text, FUNC17(obj->text), FUNC16(obj->text), dialog_attr);
}