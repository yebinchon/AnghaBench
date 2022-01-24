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
 scalar_t__ cfun ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 

void
FUNC4 (void)
{
  /* End any sequences that failed to be closed due to syntax errors.  */
  while (FUNC3 ())
    FUNC0 ();

  /* Outside function body, can't compute type's actual size
     until next function's body starts.  */

  FUNC2 (cfun);
  FUNC1 (cfun);
  cfun = 0;
}