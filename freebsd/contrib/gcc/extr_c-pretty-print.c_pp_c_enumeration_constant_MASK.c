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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC8 (c_pretty_printer *pp, tree e)
{
  bool value_is_named = true;
  tree type = FUNC2 (e);
  tree value;

  /* Find the name of this constant.  */
  for (value = FUNC4 (type);
       value != NULL_TREE && !FUNC7 (FUNC3 (value), e);
       value = FUNC0 (value))
    ;

  if (value != NULL_TREE)
    FUNC6 (pp, FUNC1 (value));
  else
    {
      /* Value must have been cast.  */
      FUNC5 (pp, type);
      value_is_named = false;
    }

  return value_is_named;
}