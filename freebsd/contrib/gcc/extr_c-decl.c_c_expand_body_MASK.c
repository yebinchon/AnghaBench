#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  (* destructor ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* constructor ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; scalar_t__ have_ctors_dtors; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_INIT_PRIORITY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8 (tree fndecl)
{

  if (!FUNC0 (fndecl)
      || FUNC0 (fndecl) == error_mark_node)
    return;

  FUNC7 (fndecl);

  if (FUNC2 (fndecl)
      && targetm.have_ctors_dtors)
    targetm.asm_out.constructor (FUNC4 (FUNC1 (fndecl), 0),
				 DEFAULT_INIT_PRIORITY);
  if (FUNC3 (fndecl)
      && targetm.have_ctors_dtors)
    targetm.asm_out.destructor (FUNC4 (FUNC1 (fndecl), 0),
				DEFAULT_INIT_PRIORITY);
}