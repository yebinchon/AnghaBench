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
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ iter_type; int done; TYPE_4__* maydefs; TYPE_3__* mustdefs; TYPE_5__* defs; } ;
typedef  TYPE_1__ ssa_op_iter ;
typedef  int /*<<< orphan*/  def_operand_p ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  NULL_DEF_OPERAND_P ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ ssa_op_iter_def ; 

__attribute__((used)) static inline def_operand_p
FUNC4 (ssa_op_iter *ptr)
{
  def_operand_p def_p;
#ifdef ENABLE_CHECKING
  gcc_assert (ptr->iter_type == ssa_op_iter_def);
#endif
  if (ptr->defs)
    {
      def_p = FUNC0 (ptr->defs);
      ptr->defs = ptr->defs->next;
      return def_p;
    }
  if (ptr->mustdefs)
    {
      def_p = FUNC2 (ptr->mustdefs);
      ptr->mustdefs = ptr->mustdefs->next;
      return def_p;
    }
  if (ptr->maydefs)
    {
      def_p = FUNC1 (ptr->maydefs);
      ptr->maydefs = ptr->maydefs->next;
      return def_p;
    }
  ptr->done = true;
  return NULL_DEF_OPERAND_P;
}