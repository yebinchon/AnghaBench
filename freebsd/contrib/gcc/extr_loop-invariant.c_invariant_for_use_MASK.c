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
struct invariant {int dummy; } ;
struct df_ref {int flags; int /*<<< orphan*/  insn; } ;
struct df_link {struct df_ref* ref; scalar_t__ next; } ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  FUNC1 (struct df_ref*) ; 
 struct df_link* FUNC2 (struct df_ref*) ; 
 struct invariant* FUNC3 (struct df_ref*) ; 
 int DF_REF_READ_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct invariant *
FUNC5 (struct df_ref *use)
{
  struct df_link *defs;
  struct df_ref *def;
  basic_block bb = FUNC0 (use->insn), def_bb;

  if (use->flags & DF_REF_READ_WRITE)
    return NULL;

  defs = FUNC2 (use);
  if (!defs || defs->next)
    return NULL;
  def = defs->ref;
  if (!FUNC3 (def))
    return NULL;

  def_bb = FUNC1 (def);
  if (!FUNC4 (CDI_DOMINATORS, bb, def_bb))
    return NULL;
  return FUNC3 (def);
}