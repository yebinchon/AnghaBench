#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int reg_type; int reg_num; } ;
typedef  TYPE_2__ const reg_entry ;
struct TYPE_14__ {scalar_t__ code; int /*<<< orphan*/  str; int /*<<< orphan*/  reg; } ;
struct TYPE_13__ {TYPE_1__* start; } ;
struct TYPE_12__ {int mem_operands; int /*<<< orphan*/  operands; TYPE_2__ const* base_reg; TYPE_2__ const* index_reg; } ;
struct TYPE_11__ {char* op_string; char* disp; int got_a_float; int op_modifier; scalar_t__ is_mem; char* next_operand; int /*<<< orphan*/ * reg; scalar_t__ in_bracket; scalar_t__ in_offset; } ;
struct TYPE_10__ {scalar_t__ code; int /*<<< orphan*/ * str; int /*<<< orphan*/ * reg; } ;
struct TYPE_8__ {int opcode_modifier; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int IsString ; 
 int MAX_OPERANDS ; 
 int Reg16 ; 
 scalar_t__ T_NIL ; 
 int T_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_7__ cur_token ; 
 TYPE_6__* current_templates ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_5__ i ; 
 int FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_4__ intel_parser ; 
 TYPE_3__ prev_token ; 
 int /*<<< orphan*/  quiet_warnings ; 
 int FUNC9 (char*) ; 
 int this_operand ; 
 scalar_t__ FUNC10 (int) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12 (char *operand_string, int got_a_float)
{
  int ret;
  char *p;

  p = intel_parser.op_string = FUNC11 (operand_string);
  intel_parser.disp = (char *) FUNC10 (FUNC9 (operand_string) + 1);

  for (;;)
    {
      /* Initialize token holders.  */
      cur_token.code = prev_token.code = T_NIL;
      cur_token.reg = *(prev_token.reg = NULL);
      cur_token.str = *(prev_token.str = NULL);

      /* Initialize parser structure.  */
      intel_parser.got_a_float = got_a_float;
      intel_parser.op_modifier = 0;
      intel_parser.is_mem = 0;
      intel_parser.in_offset = 0;
      intel_parser.in_bracket = 0;
      intel_parser.reg = NULL;
      intel_parser.disp[0] = '\0';
      intel_parser.next_operand = NULL;

      /* Read the first token and start the parser.  */
      FUNC8 ();
      ret = FUNC7 ();

      if (!ret)
	break;

      if (cur_token.code != T_NIL)
	{
	  FUNC1 (FUNC0("invalid operand for '%s' ('%s' unexpected)"),
		  current_templates->start->name, cur_token.str);
	  ret = 0;
	}
      /* If we found a memory reference, hand it over to i386_displacement
	 to fill in the rest of the operand fields.  */
      else if (intel_parser.is_mem)
	{
	  if ((i.mem_operands == 1
	       && (current_templates->start->opcode_modifier & IsString) == 0)
	      || i.mem_operands == 2)
	    {
	      FUNC1 (FUNC0("too many memory references for '%s'"),
		      current_templates->start->name);
	      ret = 0;
	    }
	  else
	    {
	      char *s = intel_parser.disp;
	      i.mem_operands++;

	      if (!quiet_warnings && intel_parser.is_mem < 0)
		/* See the comments in intel_bracket_expr.  */
		FUNC2 (FUNC0("Treating `%s' as memory reference"), operand_string);

	      /* Add the displacement expression.  */
	      if (*s != '\0')
		ret = FUNC4 (s, s + FUNC9 (s));
	      if (ret)
		{
		  /* Swap base and index in 16-bit memory operands like
		     [si+bx]. Since i386_index_check is also used in AT&T
		     mode we have to do that here.  */
		  if (i.base_reg
		      && i.index_reg
		      && (i.base_reg->reg_type & Reg16)
		      && (i.index_reg->reg_type & Reg16)
		      && i.base_reg->reg_num >= 6
		      && i.index_reg->reg_num < 6)
		    {
		      const reg_entry *base = i.index_reg;

		      i.index_reg = i.base_reg;
		      i.base_reg = base;
		    }
		  ret = FUNC6 (operand_string);
		}
	    }
	}

      /* Constant and OFFSET expressions are handled by i386_immediate.  */
      else if ((intel_parser.op_modifier & (1 << T_OFFSET))
	       || intel_parser.reg == NULL)
	ret = FUNC5 (intel_parser.disp);

      if (intel_parser.next_operand && this_operand >= MAX_OPERANDS - 1)
	ret = 0;
      if (!ret || !intel_parser.next_operand)
	break;
      intel_parser.op_string = intel_parser.next_operand;
      this_operand = i.operands++;
    }

  FUNC3 (p);
  FUNC3 (intel_parser.disp);

  return ret;
}