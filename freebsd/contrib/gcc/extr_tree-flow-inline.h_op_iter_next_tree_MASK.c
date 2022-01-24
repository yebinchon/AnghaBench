#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_10__ {scalar_t__ iter_type; int done; TYPE_7__* maydefs; TYPE_5__* mustdefs; TYPE_9__* defs; TYPE_6__* mustkills; TYPE_8__* mayuses; TYPE_3__* vuses; TYPE_4__* uses; } ;
typedef  TYPE_1__ ssa_op_iter ;
struct TYPE_17__ {struct TYPE_17__* next; } ;
struct TYPE_16__ {struct TYPE_16__* next; } ;
struct TYPE_15__ {struct TYPE_15__* next; } ;
struct TYPE_14__ {struct TYPE_14__* next; } ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
struct TYPE_12__ {struct TYPE_12__* next; } ;
struct TYPE_11__ {struct TYPE_11__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ ssa_op_iter_tree ; 

__attribute__((used)) static inline tree
FUNC8 (ssa_op_iter *ptr)
{
  tree val;
#ifdef ENABLE_CHECKING
  gcc_assert (ptr->iter_type == ssa_op_iter_tree);
#endif
  if (ptr->uses)
    {
      val = FUNC5 (ptr->uses);
      ptr->uses = ptr->uses->next;
      return val;
    }
  if (ptr->vuses)
    {
      val = FUNC6 (ptr->vuses);
      ptr->vuses = ptr->vuses->next;
      return val;
    }
  if (ptr->mayuses)
    {
      val = FUNC1 (ptr->mayuses);
      ptr->mayuses = ptr->mayuses->next;
      return val;
    }
  if (ptr->mustkills)
    {
      val = FUNC3 (ptr->mustkills);
      ptr->mustkills = ptr->mustkills->next;
      return val;
    }
  if (ptr->defs)
    {
      val = FUNC0 (ptr->defs);
      ptr->defs = ptr->defs->next;
      return val;
    }
  if (ptr->mustdefs)
    {
      val = FUNC4 (ptr->mustdefs);
      ptr->mustdefs = ptr->mustdefs->next;
      return val;
    }
  if (ptr->maydefs)
    {
      val = FUNC2 (ptr->maydefs);
      ptr->maydefs = ptr->maydefs->next;
      return val;
    }

  ptr->done = true;
  return NULL_TREE;

}