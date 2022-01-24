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
struct ptr_info_def {int dummy; } ;

/* Variables and functions */
 struct ptr_info_def* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ptr_info_def*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC4 (tree name, tree stmt)
{
  tree new_name = FUNC3 (FUNC1 (name), stmt);
  struct ptr_info_def *old_ptr_info = FUNC0 (name);

  if (old_ptr_info)
    FUNC2 (new_name, old_ptr_info);

  return new_name;
}