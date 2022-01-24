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
typedef  char* tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8 (tree function, tree params)
{
  tree type;
  int size;

  if (params == NULL)
    {
      FUNC6 ("too few arguments to function %qE", function);
      return 0;
    }

  type = FUNC3 (FUNC4 (params));
  if (FUNC2 (type) != POINTER_TYPE)
    goto incompatible;

  type = FUNC3 (type);
  if (!FUNC0 (type) && !FUNC1 (type))
    goto incompatible;

  size = FUNC7 (FUNC5 (type), 1);
  if (size == 1 || size == 2 || size == 4 || size == 8 || size == 16)
    return size;

 incompatible:
  FUNC6 ("incompatible type for argument %d of %qE", 1, function);
  return 0;
}