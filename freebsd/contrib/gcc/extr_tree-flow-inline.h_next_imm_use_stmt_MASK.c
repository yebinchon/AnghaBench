#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_7__ {int /*<<< orphan*/ * prev; int /*<<< orphan*/  next; } ;
struct TYPE_6__ {int /*<<< orphan*/  imm_use; TYPE_5__ iter_node; } ;
typedef  TYPE_1__ imm_use_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static inline tree
FUNC4 (imm_use_iterator *imm)
{
  imm->imm_use = imm->iter_node.next;
  if (FUNC2 (imm))
    {
      if (imm->iter_node.prev != NULL)
	FUNC1 (&imm->iter_node);
      return NULL_TREE;
    }

  FUNC3 (imm->imm_use, imm);
  return FUNC0 (imm->imm_use);

}