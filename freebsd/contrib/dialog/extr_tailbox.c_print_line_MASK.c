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
typedef  int /*<<< orphan*/  WINDOW ;
typedef  int /*<<< orphan*/  MY_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(MY_OBJ * obj, WINDOW *win, int row, int width)
{
    int i, y, x;
    char *line = FUNC1(obj);

    (void) FUNC6(win, row, 0);	/* move cursor to correct line */
    (void) FUNC4(win, ' ');
    (void) FUNC5(win, line, FUNC0((int) FUNC3(line), width - 2));

    FUNC2(win, y, x);
    (void) y;
    /* Clear 'residue' of previous line */
    for (i = 0; i < width - x; i++)
	(void) FUNC4(win, ' ');
}