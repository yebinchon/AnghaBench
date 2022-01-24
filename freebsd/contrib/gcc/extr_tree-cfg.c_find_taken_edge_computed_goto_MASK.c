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
typedef  int /*<<< orphan*/ * edge ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static edge
FUNC3 (basic_block bb, tree val)
{
  basic_block dest;
  edge e = NULL;

  dest = FUNC2 (val);
  if (dest)
    {
      e = FUNC0 (bb, dest);
      FUNC1 (e != NULL);
    }

  return e;
}