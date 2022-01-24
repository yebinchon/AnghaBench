#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {int /*<<< orphan*/  objs; int /*<<< orphan*/  ptrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static tree
FUNC2 (tree object, bool is_ptr)
{
  if (is_ptr)
    return FUNC0 (FUNC1 (true)->ptrs, object);
  else
    return FUNC0 (FUNC1 (true)->objs, object);
}