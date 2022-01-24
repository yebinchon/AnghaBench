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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void
FUNC4(WINDOW *win, int height, int width, chtype attr)
{
    int i, j;

    FUNC0(win, attr);
    for (i = 0; i < height; i++) {
	(void) FUNC3(win, i, 0);
	for (j = 0; j < width; j++)
	    (void) FUNC2(win, ' ');
    }
    (void) FUNC1(win);
}