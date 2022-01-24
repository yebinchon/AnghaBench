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
 int /*<<< orphan*/ * argbuf ; 
 int argbuf_index ; 
 int FUNC0 (char const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int
FUNC4 (const char *spec)
{
  int value;

  value = FUNC0 (spec);

  /* Force out any unfinished command.
     If -pipe, this forces out the last command if it ended in `|'.  */
  if (value == 0)
    {
      if (argbuf_index > 0 && !FUNC3 (argbuf[argbuf_index - 1], "|"))
	argbuf_index--;

      FUNC2 ();

      if (argbuf_index > 0)
	value = FUNC1 ();
    }

  return value;
}