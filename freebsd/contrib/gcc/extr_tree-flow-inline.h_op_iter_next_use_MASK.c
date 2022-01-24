#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  use_operand_p ;
struct TYPE_7__ {scalar_t__ iter_type; scalar_t__ phi_i; scalar_t__ num_phi; int done; int /*<<< orphan*/  phi_stmt; TYPE_5__* mustkills; TYPE_6__* mayuses; TYPE_3__* vuses; TYPE_4__* uses; } ;
typedef  TYPE_1__ ssa_op_iter ;
struct TYPE_11__ {struct TYPE_11__* next; } ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  NULL_USE_OPERAND_P ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ ssa_op_iter_use ; 

__attribute__((used)) static inline use_operand_p
FUNC6 (ssa_op_iter *ptr)
{
  use_operand_p use_p;
#ifdef ENABLE_CHECKING
  gcc_assert (ptr->iter_type == ssa_op_iter_use);
#endif
  if (ptr->uses)
    {
      use_p = FUNC3 (ptr->uses);
      ptr->uses = ptr->uses->next;
      return use_p;
    }
  if (ptr->vuses)
    {
      use_p = FUNC4 (ptr->vuses);
      ptr->vuses = ptr->vuses->next;
      return use_p;
    }
  if (ptr->mayuses)
    {
      use_p = FUNC0 (ptr->mayuses);
      ptr->mayuses = ptr->mayuses->next;
      return use_p;
    }
  if (ptr->mustkills)
    {
      use_p = FUNC1 (ptr->mustkills);
      ptr->mustkills = ptr->mustkills->next;
      return use_p;
    }
  if (ptr->phi_i < ptr->num_phi)
    {
      return FUNC2 (ptr->phi_stmt, (ptr->phi_i)++);
    }
  ptr->done = true;
  return NULL_USE_OPERAND_P;
}