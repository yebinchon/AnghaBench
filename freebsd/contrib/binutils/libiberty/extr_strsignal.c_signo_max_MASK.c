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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  num_signal_names ; 
 int /*<<< orphan*/ * signal_names ; 
 int /*<<< orphan*/  sys_nsig ; 

int
FUNC2 (void)
{
  int maxsize;

  if (signal_names == NULL)
    {
      FUNC1 ();
    }
  maxsize = FUNC0 (sys_nsig, num_signal_names);
  return (maxsize - 1);
}