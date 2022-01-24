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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC4 (tree type, tree fn)
{
  /* If TYPE is a pointer-to-member, it is variably modified if either
     the class or the member are variably modified.  */
  if (FUNC2 (type))
    return (FUNC3 (FUNC0 (type), fn)
	    || FUNC3 (FUNC1 (type),
					 fn));

  /* All other types are not variably modified.  */
  return false;
}