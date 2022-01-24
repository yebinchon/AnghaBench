#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* stmt_ann_t ;
struct TYPE_3__ {int has_volatile_ops; int /*<<< orphan*/ * addresses_taken; } ;

/* Variables and functions */
 int /*<<< orphan*/  build_v_may_defs ; 
 int /*<<< orphan*/  build_v_must_defs ; 
 int /*<<< orphan*/  build_vuses ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5 (tree stmt)
{
  stmt_ann_t ann = FUNC1 (stmt);
  
  /* Initially assume that the statement has no volatile operands and
     does not take the address of any symbols.  */
  if (ann)
    {
      ann->has_volatile_ops = false;
      if (ann->addresses_taken)
	ann->addresses_taken = NULL;
    }

  FUNC4 ();

  FUNC3 (stmt);
  FUNC2 (build_vuses);
  FUNC2 (build_v_may_defs);
  FUNC2 (build_v_must_defs);

  FUNC0 (stmt);
}