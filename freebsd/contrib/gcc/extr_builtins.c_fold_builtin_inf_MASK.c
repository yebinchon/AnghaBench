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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC5 (tree type, int warn)
{
  REAL_VALUE_TYPE real;

  /* __builtin_inff is intended to be usable to define INFINITY on all
     targets.  If an infinity is not available, INFINITY expands "to a
     positive constant of type float that overflows at translation
     time", footnote "In this case, using INFINITY will violate the
     constraint in 6.4.4 and thus require a diagnostic." (C99 7.12#4).
     Thus we pedwarn to ensure this constraint violation is
     diagnosed.  */
  if (!FUNC0 (FUNC1 (type)) && warn)
    FUNC3 ("target format does not support infinity");

  FUNC4 (&real);
  return FUNC2 (type, real);
}