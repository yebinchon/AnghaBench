#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  use_operand_p ;
struct TYPE_7__ {scalar_t__ iter_type; int done; TYPE_3__* mustkills; TYPE_5__* mayuses; } ;
typedef  TYPE_1__ ssa_op_iter ;
typedef  int /*<<< orphan*/  def_operand_p ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  NULL_DEF_OPERAND_P ; 
 int /*<<< orphan*/  NULL_USE_OPERAND_P ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ ssa_op_iter_maymustdef ; 

__attribute__((used)) static inline void
FUNC5 (use_operand_p *use, def_operand_p *def, 
			 ssa_op_iter *ptr)
{
#ifdef ENABLE_CHECKING
  gcc_assert (ptr->iter_type == ssa_op_iter_maymustdef);
#endif
  if (ptr->mayuses)
    {
      *def = FUNC1 (ptr->mayuses);
      *use = FUNC0 (ptr->mayuses);
      ptr->mayuses = ptr->mayuses->next;
      return;
    }

  if (ptr->mustkills)
    {
      *def = FUNC3 (ptr->mustkills);
      *use = FUNC2 (ptr->mustkills);
      ptr->mustkills = ptr->mustkills->next;
      return;
    }

  *def = NULL_DEF_OPERAND_P;
  *use = NULL_USE_OPERAND_P;
  ptr->done = true;
  return;
}