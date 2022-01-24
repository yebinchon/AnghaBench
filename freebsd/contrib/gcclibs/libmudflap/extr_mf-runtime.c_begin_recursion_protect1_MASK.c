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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ reentrant ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*,int) ; 

__attribute__((used)) static void
FUNC5 (const char *pf)
{
  if (FUNC0 () == reentrant)
    {
      FUNC4 (2, "mf: erroneous reentrancy detected in `", 38);
      FUNC4 (2, pf, FUNC3(pf));
      FUNC4 (2, "'\n", 2); \
      FUNC2 ();
    }
  FUNC1 (reentrant);
}