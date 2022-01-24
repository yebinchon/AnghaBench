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
typedef  int /*<<< orphan*/  string_type ;

/* Variables and functions */
 char FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/  tos ; 

__attribute__((used)) static void
FUNC5 ()
{
  unsigned int idx = 0;
  string_type out;
  FUNC3 (&out);

  while (FUNC0 (tos, idx))
    {
      if (FUNC0 (tos, idx) == '{' && FUNC0 (tos, idx + 1) == '*')
	{
	  FUNC2 (&out, "/*");
	  idx += 2;
	}
      else if (FUNC0 (tos, idx) == '*' && FUNC0 (tos, idx + 1) == '}')
	{
	  FUNC2 (&out, "*/");
	  idx += 2;
	}
      else
	{
	  FUNC1 (&out, FUNC0 (tos, idx));
	  idx++;
	}
    }

  FUNC4 (tos, &out);

  pc++;
}