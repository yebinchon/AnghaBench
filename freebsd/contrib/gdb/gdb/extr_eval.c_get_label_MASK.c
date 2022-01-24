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
struct expression {TYPE_1__* elts; } ;
struct TYPE_2__ {scalar_t__ opcode; char string; int /*<<< orphan*/  longconst; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ OP_LABELED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC2 (struct expression *exp, int *pos)
{
  if (exp->elts[*pos].opcode == OP_LABELED)
    {
      int pc = (*pos)++;
      char *name = &exp->elts[pc + 2].string;
      int tem = FUNC1 (exp->elts[pc + 1].longconst);
      (*pos) += 3 + FUNC0 (tem + 1);
      return name;
    }
  else
    return NULL;
}