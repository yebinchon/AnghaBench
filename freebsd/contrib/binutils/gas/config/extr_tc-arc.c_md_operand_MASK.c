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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* name; } ;
struct arc_ext_operand_value {struct arc_ext_operand_value* next; TYPE_1__ operand; } ;
typedef  void* offsetT ;
struct TYPE_8__ {void* X_add_number; void* X_op; } ;
typedef  TYPE_2__ expressionS ;
struct TYPE_9__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 void* O_register ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct arc_ext_operand_value* arc_ext_operands ; 
 TYPE_5__* arc_reg_names ; 
 int arc_reg_names_count ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* input_line_pointer ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

void
FUNC6 (expressionS *expressionP)
{
  char *p = input_line_pointer;

  if (*p != '%')
    return;

  if (FUNC5 (p, "%st(", 4) == 0)
    {
      input_line_pointer += 4;
      FUNC3 (expressionP);
      if (*input_line_pointer != ')')
	{
	  FUNC2 ("missing ')' in %%-op");
	  return;
	}
      ++input_line_pointer;
      FUNC1 (expressionP);
    }
  else
    {
      /* It could be a register.  */
      int i, l;
      struct arc_ext_operand_value *ext_oper = arc_ext_operands;
      p++;

      while (ext_oper)
	{
	  l = FUNC4 (ext_oper->operand.name);
	  if (!FUNC5 (p, ext_oper->operand.name, l) && !FUNC0 (*(p + l)))
	    {
	      input_line_pointer += l + 1;
	      expressionP->X_op = O_register;
	      expressionP->X_add_number = (offsetT) &ext_oper->operand;
	      return;
	    }
	  ext_oper = ext_oper->next;
	}
      for (i = 0; i < arc_reg_names_count; i++)
	{
	  l = FUNC4 (arc_reg_names[i].name);
	  if (!FUNC5 (p, arc_reg_names[i].name, l) && !FUNC0 (*(p + l)))
	    {
	      input_line_pointer += l + 1;
	      expressionP->X_op = O_register;
	      expressionP->X_add_number = (offsetT) &arc_reg_names[i];
	      break;
	    }
	}
    }
}