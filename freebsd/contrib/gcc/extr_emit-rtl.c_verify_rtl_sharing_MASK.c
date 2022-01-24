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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC8 (void)
{
  rtx p;

  for (p = FUNC5 (); p; p = FUNC2 (p))
    if (FUNC0 (p))
      {
	FUNC6 (FUNC3 (p));
	FUNC6 (FUNC4 (p));
	FUNC6 (FUNC1 (p));
      }

  for (p = FUNC5 (); p; p = FUNC2 (p))
    if (FUNC0 (p))
      {
	FUNC7 (FUNC3 (p), p);
	FUNC7 (FUNC4 (p), p);
	FUNC7 (FUNC1 (p), p);
      }
}