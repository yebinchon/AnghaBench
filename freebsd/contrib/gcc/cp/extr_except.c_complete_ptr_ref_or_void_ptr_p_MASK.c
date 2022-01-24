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
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (tree type, tree from)
{
  int is_ptr;

  /* Check complete.  */
  type = FUNC3 (type, from);
  if (!type)
    return 0;

  /* Or a pointer or ref to one, or cv void *.  */
  is_ptr = FUNC0 (type) == POINTER_TYPE;
  if (is_ptr || FUNC0 (type) == REFERENCE_TYPE)
    {
      tree core = FUNC1 (type);

      if (is_ptr && FUNC2 (core))
	/* OK */;
      else if (!FUNC3 (core, from))
	return 0;
    }
  return 1;
}