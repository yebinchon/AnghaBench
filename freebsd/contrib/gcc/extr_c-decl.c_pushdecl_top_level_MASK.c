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

/* Variables and functions */
 scalar_t__ CONST_DECL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ external_scope ; 
 scalar_t__ file_scope ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

tree
FUNC6 (tree x)
{
  tree name;
  bool nested = false;
  FUNC5 (FUNC2 (x) == VAR_DECL || FUNC2 (x) == CONST_DECL);

  name = FUNC0 (x);

 FUNC5 (FUNC2 (x) == CONST_DECL || !FUNC1 (name));

  if (FUNC3 (x))
    {
      FUNC4 (name, x, external_scope, /*invisible=*/true, /*nested=*/false);
      nested = true;
    }
  if (file_scope)
    FUNC4 (name, x, file_scope, /*invisible=*/false, nested);

  return x;
}