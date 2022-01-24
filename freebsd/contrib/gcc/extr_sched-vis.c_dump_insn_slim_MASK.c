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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_LEN ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (char,int /*<<< orphan*/ *) ; 

void
FUNC10 (FILE *f, rtx x)
{
  char t[BUF_LEN + 32];
  rtx note;

  FUNC7 (t, x, 1);
  FUNC6 (t, f);
  FUNC9 ('\n', f);
  if (FUNC1 (x) && FUNC2 (x))
    for (note = FUNC2 (x); note; note = FUNC4 (note, 1))
      {
        FUNC8 (t, FUNC4 (note, 0), 1);
	FUNC5 (f, "      %s: %s\n",
		 FUNC0 (FUNC3 (note)), t);
      }
}