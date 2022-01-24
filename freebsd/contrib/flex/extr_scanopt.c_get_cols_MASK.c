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

/* Variables and functions */
 scalar_t__ COLS ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4 ()
{
	char   *env;
	int     cols = 80;	/* default */

#ifdef HAVE_NCURSES_H
	initscr ();
	endwin ();
	if (COLS > 0)
		return COLS;
#endif

	if ((env = FUNC2 ("COLUMNS")) != NULL)
		cols = FUNC0 (env);

	return cols;
}