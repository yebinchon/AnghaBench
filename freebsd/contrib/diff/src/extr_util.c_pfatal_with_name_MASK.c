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
 int /*<<< orphan*/  EXIT_TROUBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3 (char const *name)
{
  int e = errno;
  FUNC2 ();
  FUNC1 (EXIT_TROUBLE, e, "%s", name);
  FUNC0 ();
}