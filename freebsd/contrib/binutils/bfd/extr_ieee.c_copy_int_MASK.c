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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (void)
{
  int type = FUNC2 ();
  int ch;
  if (type <= 0x84)
    {
      FUNC1 (type);
      FUNC0 ();
      switch (type)
	{
	case 0x84:
	  ch = FUNC2 ();
	  FUNC0 ();
	  FUNC1 (ch);
	case 0x83:
	  ch = FUNC2 ();
	  FUNC0 ();
	  FUNC1 (ch);
	case 0x82:
	  ch = FUNC2 ();
	  FUNC0 ();
	  FUNC1 (ch);
	case 0x81:
	  ch = FUNC2 ();
	  FUNC0 ();
	  FUNC1 (ch);
	case 0x80:
	  break;
	}
    }
}