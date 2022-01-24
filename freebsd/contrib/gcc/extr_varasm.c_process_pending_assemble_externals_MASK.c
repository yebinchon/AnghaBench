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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ pending_assemble_externals ; 

void
FUNC3 (void)
{
#ifdef ASM_OUTPUT_EXTERNAL
  tree list;
  for (list = pending_assemble_externals; list; list = TREE_CHAIN (list))
    assemble_external_real (TREE_VALUE (list));

  pending_assemble_externals = 0;
#endif
}