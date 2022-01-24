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
union exp_element {int opcode; int /*<<< orphan*/  symbol; int /*<<< orphan*/  longconst; struct type* type; } ;
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
#define  OP_LONG 130 
#define  OP_VAR_VALUE 129 
#define  UNOP_NEG 128 
 struct value* FUNC0 (int /*<<< orphan*/ ) ; 
 struct value* FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 struct value* FUNC2 (struct value*) ; 

__attribute__((used)) static struct value *
FUNC3 (union exp_element **pc)
{
  enum exp_opcode op = (*pc)->opcode;
  struct value *v1;

  switch (op)
    {
    case OP_LONG:
      {
	struct type *type = (*pc)[1].type;
	LONGEST k = (*pc)[2].longconst;
	(*pc) += 4;
	return FUNC1 (type, k);
      }

    case OP_VAR_VALUE:
      {
	struct value *v = FUNC0 ((*pc)[2].symbol);
	(*pc) += 4;
	return v;
      }

      /* We could add more operators in here.  */

    case UNOP_NEG:
      (*pc)++;
      v1 = FUNC3 (pc);
      if (v1)
	return FUNC2 (v1);
      else
	return 0;

    default:
      return 0;
    }
}