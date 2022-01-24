#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* arg; } ;
typedef  TYPE_1__ ins ;
struct TYPE_6__ {int cc; int r; int rp; int pr; int prp; scalar_t__ constant; int /*<<< orphan*/  type; void* X_op; } ;
typedef  TYPE_2__ argument ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 void* O_register ; 
 int /*<<< orphan*/  arg_c ; 
 int /*<<< orphan*/  arg_cc ; 
 int /*<<< orphan*/  arg_cr ; 
 int /*<<< orphan*/  arg_crp ; 
 int /*<<< orphan*/  arg_ic ; 
 int /*<<< orphan*/  arg_icr ; 
 int /*<<< orphan*/  arg_idxr ; 
 int /*<<< orphan*/  arg_pr ; 
 int /*<<< orphan*/  arg_prp ; 
 int /*<<< orphan*/  arg_r ; 
 int /*<<< orphan*/  arg_rbase ; 
 int /*<<< orphan*/  arg_rp ; 
 int cur_arg_num ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  nullargs ; 
 int nullpregister ; 
 int nullregister ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char) ; 

__attribute__((used)) static void
FUNC8 (char *operand, ins * cr16_ins)
{
  int ret_val;
  argument *cur_arg = cr16_ins->arg + cur_arg_num; /* Current argument.  */

  /* Initialize the type to NULL before parsing.  */
  cur_arg->type = nullargs;

  /* Check whether this is a condition code .  */
  if ((FUNC0 ("b")) && ((ret_val = FUNC1 (operand)) != -1))
    {
      cur_arg->type = arg_cc;
      cur_arg->cc = ret_val;
      cur_arg->X_op = O_register;
      return;
    }

  /* Check whether this is a general processor register.  */
  if ((ret_val = FUNC4 (operand)) != nullregister)
    {
      cur_arg->type = arg_r;
      cur_arg->r = ret_val;
      cur_arg->X_op = 0;
      return;
    }

  /* Check whether this is a general processor register pair.  */
  if ((operand[0] == '(')
      && ((ret_val = FUNC5 (operand)) != nullregister))
    {
      cur_arg->type = arg_rp;
      cur_arg->rp = ret_val;
      cur_arg->X_op = O_register;
      return;
    }

  /* Check whether the operand is a processor register.
     For "lprd" and "sprd" instruction, only 32 bit
     processor registers used.  */
  if (!(FUNC0 ("lprd") || (FUNC0 ("sprd")))
      && ((ret_val = FUNC2 (operand)) != nullpregister))
    {
      cur_arg->type = arg_pr;
      cur_arg->pr = ret_val;
      cur_arg->X_op = O_register;
      return;
    }

  /* Check whether this is a processor register - 32 bit.  */
  if ((ret_val = FUNC3 (operand)) != nullpregister)
    {
      cur_arg->type = arg_prp;
      cur_arg->prp = ret_val;
      cur_arg->X_op = O_register;
      return;
    }

  /* Deal with special characters.  */
  switch (operand[0])
    {
    case '$':
      if (FUNC7 (operand, '(') != NULL)
	cur_arg->type = arg_icr;
      else
	cur_arg->type = arg_ic;
      goto set_params;
      break;

    case '(':
      cur_arg->type = arg_rbase;
      goto set_params;
      break;

    case '[':
      cur_arg->type = arg_idxr;
      goto set_params;
      break;

    default:
      break;
    }

  if (FUNC7 (operand, '(') != NULL)
    {
      if (FUNC7 (operand, ',') != NULL
          && (FUNC7 (operand, ',') > FUNC7 (operand, '(')))
        cur_arg->type = arg_crp;
      else
        cur_arg->type = arg_cr;
    }
  else
    cur_arg->type = arg_c;

/* Parse an operand according to its type.  */
 set_params:
  cur_arg->constant = 0;
  FUNC6 (operand, cr16_ins);
}