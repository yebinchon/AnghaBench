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
typedef  enum rid { ____Placeholder_rid } rid ;
struct TYPE_2__ {int /*<<< orphan*/  (* type_decl ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_DECL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* debug_hooks ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ridpointers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4 (enum rid rid_index, const char *name, tree type)
{
  tree id, decl;
  if (name == 0)
    id = ridpointers[(int) rid_index];
  else
    id = FUNC1 (name);
  decl = FUNC0 (TYPE_DECL, id, type);
  FUNC2 (decl);
  if (debug_hooks->type_decl)
    debug_hooks->type_decl (decl, false);
}