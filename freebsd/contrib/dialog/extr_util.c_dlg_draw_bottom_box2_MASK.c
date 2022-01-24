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
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  ACS_LTEE ; 
 int /*<<< orphan*/  ACS_RTEE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC6(WINDOW *win, chtype on_left, chtype on_right, chtype on_inside)
{
    int width = FUNC2(win);
    int height = FUNC3(win);
    int i;

    FUNC0(win, on_left);
    (void) FUNC5(win, height - 3, 0);
    (void) FUNC4(win, FUNC1(ACS_LTEE));
    for (i = 0; i < width - 2; i++)
	(void) FUNC4(win, FUNC1(ACS_HLINE));
    FUNC0(win, on_right);
    (void) FUNC4(win, FUNC1(ACS_RTEE));
    FUNC0(win, on_inside);
    (void) FUNC5(win, height - 2, 1);
    for (i = 0; i < width - 2; i++)
	(void) FUNC4(win, ' ');
}