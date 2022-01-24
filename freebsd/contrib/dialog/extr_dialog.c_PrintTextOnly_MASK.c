#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int eOptions ;
struct TYPE_2__ {int text_height; int text_width; int /*<<< orphan*/  output; int /*<<< orphan*/  text_only; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 scalar_t__ COLS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char**,int) ; 
 scalar_t__ LINES ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (char**) ; 
 TYPE_1__ dialog_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC9 (char**,int) ; 
#define  o_print_text_only 129 
#define  o_print_text_size 128 
 int /*<<< orphan*/  FUNC10 (char**,int*) ; 
 int /*<<< orphan*/  stdscr ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(char **argv, int *offset, eOptions code)
{
    /* TODO - handle two optional numeric params */
    char *text;
    int height = 0;
    int width = 0;
    int height2 = 0;
    int width2 = 0;
    int next = FUNC2(argv + *offset);

    if (LINES <= 0 && COLS <= 0)
	FUNC6(FUNC7(dialog_state.input), &LINES, &COLS);

    text = FUNC11(FUNC10(argv, offset));
    FUNC0(argv, *offset);

    if (next >= 1) {
	next = FUNC1(next, 3);
	height = FUNC9(argv, *offset + 1);
	if (next >= 2)
	    width = FUNC9(argv, *offset + 2);
	*offset += next - 1;
    }

    FUNC5(text);
    FUNC3(NULL, text, &height2, &width2, height, width);

    switch (code) {
    case o_print_text_only:
	dialog_state.text_only = TRUE;
	FUNC4(stdscr, text, height2, width2);
	dialog_state.text_only = FALSE;
	break;
    case o_print_text_size:
	FUNC8(dialog_state.output, "%d %d\n",
		dialog_state.text_height,
		dialog_state.text_width);
	break;
    default:
	break;
    }
}