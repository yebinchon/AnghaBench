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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 size_t BUILT_IN_TRAP ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** implicit_built_in_decls ; 

__attribute__((used)) static tree
FUNC2 (void)
{
  tree fn = implicit_built_in_decls[BUILT_IN_TRAP];

  FUNC1 (fn != NULL);
  fn = FUNC0 (fn, NULL_TREE);
  return fn;
}