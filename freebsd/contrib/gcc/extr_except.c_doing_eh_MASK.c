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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  flag_exceptions ; 

int
FUNC1 (int do_warn)
{
  if (! flag_exceptions)
    {
      static int warned = 0;
      if (! warned && do_warn)
	{
	  FUNC0 ("exception handling disabled, use -fexceptions to enable");
	  warned = 1;
	}
      return 0;
    }
  return 1;
}