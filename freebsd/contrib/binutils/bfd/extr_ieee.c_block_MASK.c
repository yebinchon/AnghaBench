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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6 (void)
{
  int ch;

  while (1)
    {
      ch = FUNC0 ();
      switch (ch)
	{
	case 0xe1:
	case 0xe5:
	  return;
	case 0xf9:
	  return;
	case 0xf0:
	  FUNC2 ();
	  break;
	case 0xf1:
	  FUNC3 ();
	  break;
	case 0xf2:
	  FUNC4 ();
	  break;
	case 0xf8:
	  FUNC5 ();
	  break;
	case 0xe2:
	  FUNC1 ();
	  break;

	}
    }
}