#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; int cc; int /*<<< orphan*/  rp; int /*<<< orphan*/  r; int /*<<< orphan*/  i_r; int /*<<< orphan*/  prp; int /*<<< orphan*/  pr; } ;
typedef  TYPE_1__ argument ;
struct TYPE_6__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  CSTBIT_INS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LD_STOR_INS ; 
#define  arg_c 139 
#define  arg_cc 138 
#define  arg_cr 137 
#define  arg_crp 136 
#define  arg_ic 135 
#define  arg_idxr 134 
#define  arg_idxrp 133 
#define  arg_pr 132 
#define  arg_prp 131 
#define  arg_r 130 
#define  arg_rbase 129 
#define  arg_rp 128 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* instruction ; 
 int /*<<< orphan*/  FUNC8 (int,int,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9 (int nbits, int shift, argument *arg)
{
  switch (arg->type)
    {
    case arg_cc:
      FUNC0 (0, arg->cc, shift);
      break;

    case arg_r:
      FUNC0 (0, FUNC6 (arg->r), shift);
      break;

    case arg_rp:
      FUNC0 (0, FUNC7 (arg->rp), shift);
      break;

    case arg_pr:
      FUNC0 (0, FUNC4 (arg->pr), shift);
      break;

    case arg_prp:
      FUNC0 (0, FUNC5 (arg->prp), shift);
      break;

    case arg_idxrp:
      /*    16      12      8    6      0
            +-----------------------------+
            | r_index | disp  | rp_base   |
            +-----------------------------+          */

      if (instruction->size == 3)
	{
	  FUNC0 (0, FUNC3 (arg->rp), 0);
	  if (FUNC6 (arg->i_r) == 12)
	    FUNC0 (0, 0, 3);
	  else
	    FUNC0 (0, 1, 3);
	}
      else
	{
	  FUNC0 (0, FUNC3 (arg->rp), 16);
	  if (FUNC6 (arg->i_r) == 12)
	    FUNC0 (0, 0, 19);
	  else
	    FUNC0 (0, 1, 19);
	}
      FUNC8 (nbits, shift, arg);
      break;

    case arg_idxr:
      if (FUNC6 (arg->i_r) == 12)
	if (FUNC1 ("cbitb") || FUNC1 ("sbitb")
	    || FUNC1 ("tbitb"))
	  FUNC0 (0, 0, 23);
	else FUNC0 (0, 0, 24);
      else
	if (FUNC1 ("cbitb") || FUNC1 ("sbitb")
	    || FUNC1 ("tbitb"))
	  FUNC0 (0, 1, 23);
	else FUNC0 (0, 1, 24);

      FUNC8 (nbits, shift, arg);
      break;

    case arg_ic:
    case arg_c:
      FUNC8 (nbits, shift, arg);
      break;

    case arg_rbase:
      FUNC0 (0, FUNC6 (arg->r), shift);
      break;

    case arg_cr:
      FUNC8 (nbits, shift , arg);
      /* Add the register argument to the output_opcode.  */
      FUNC0 (0, FUNC6 (arg->r), (shift+16));
      break;

    case arg_crp:
      FUNC8 (nbits, shift , arg);
      if (instruction->size > 1)
	FUNC0 (0, FUNC7 (arg->rp), (shift + 16));
      else if (FUNC2 (LD_STOR_INS) || (FUNC2 (CSTBIT_INS)))
	{
	  if (instruction->size == 2)
	    FUNC0 (0, FUNC7 (arg->rp), (shift - 8));
	  else if (instruction->size == 1)
	    FUNC0 (0, FUNC7 (arg->rp), 16);
	}
      else
	FUNC0 (0, FUNC7 (arg->rp), shift);
      break;

    default:
      break;
    }
}