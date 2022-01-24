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
typedef  int /*<<< orphan*/  sb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buffer_limit ; 
 int /*<<< orphan*/  get_line_sb ; 
 int /*<<< orphan*/  input_line_pointer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8 (int count, const char *start, const char *end)
{
  sb one;
  sb many;

  FUNC7 (&one);
  if (!FUNC2 (start, end, &one, get_line_sb))
    {
      FUNC1 (FUNC0("%s without %s"), start, end);
      return;
    }

  FUNC7 (&many);
  while (count-- > 0)
    FUNC5 (&many, &one);

  FUNC6 (&one);

  FUNC3 (&many, input_line_pointer, 1);
  FUNC6 (&many);
  buffer_limit = FUNC4 (&input_line_pointer);
}