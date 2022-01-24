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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  restrict_base_for_decl ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4 (void)
{
  if (FUNC2 (restrict_base_for_decl) != 0)
    FUNC0 (stderr,
	     "RESTRICT_BASE    hash: size %ld, %ld elements, %d collisions\n",
	     (long) FUNC3 (restrict_base_for_decl),
	     (long) FUNC2 (restrict_base_for_decl),
	     FUNC1 (restrict_base_for_decl));
}