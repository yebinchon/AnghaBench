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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ current_tinst_level ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ tinst_depth ; 

__attribute__((used)) static void
FUNC2 (tree level)
{
  tree t;

  tinst_depth = 0;
  for (t = level; t; t = FUNC0 (t))
    ++tinst_depth;

  current_tinst_level = level;
  FUNC1 ();
}