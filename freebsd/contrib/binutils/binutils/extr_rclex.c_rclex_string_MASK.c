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
 char FUNC0 () ; 
 char FUNC1 () ; 

__attribute__((used)) static void
FUNC2 (void)
{
  int c;
  
  while ((c = FUNC0 ()) != -1)
    {
      if (c == '\n')
	break;
      if (c == '\\')
        {
	  FUNC1 ();
	  if ((c = FUNC0 ()) == -1 || c == '\n')
	    break;
	  FUNC1 ();
        }
      else if (FUNC1 () == '"')
	{
	  if (FUNC0 () == '"')
	    FUNC1 ();
	  else
	    break;
	}
    }
}