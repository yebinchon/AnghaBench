#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ argument ;
typedef  int /*<<< orphan*/  a ;
struct TYPE_10__ {int nargs; int size; TYPE_2__* arg; } ;
struct TYPE_9__ {int size; TYPE_1__* operands; } ;
struct TYPE_7__ {unsigned int shift; int /*<<< orphan*/  op_type; } ;

/* Variables and functions */
 TYPE_6__ currInsn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* instruction ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ size_changed ; 

__attribute__((used)) static void
FUNC4 (void)
{
  int i;
  unsigned int shift;

  for (i = 0; i < currInsn.nargs; i++)
    {
      argument a;

      FUNC3 (&a, 0, sizeof (a));
      a.type = FUNC0 (instruction->operands[i].op_type);
      a.size = FUNC1 (instruction->operands[i].op_type);
      shift = instruction->operands[i].shift;

      FUNC2 (&a, shift);
      currInsn.arg[i] = a;
    }

  /* Calculate instruction size (in bytes).  */
  currInsn.size = instruction->size + (size_changed ? 1 : 0);
  /* Now in bits.  */
  currInsn.size *= 2;
}