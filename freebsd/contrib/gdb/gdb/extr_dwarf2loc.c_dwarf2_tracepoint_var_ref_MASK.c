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
struct symbol {int dummy; } ;
struct TYPE_2__ {unsigned char reg; } ;
struct axs_value {void* kind; TYPE_1__ u; } ;
struct agent_expr {int /*<<< orphan*/  scope; } ;
typedef  unsigned char ULONGEST ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 unsigned char DW_OP_fbreg ; 
 unsigned char DW_OP_reg0 ; 
 unsigned char DW_OP_reg31 ; 
 unsigned char DW_OP_regx ; 
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aop_add ; 
 int /*<<< orphan*/  FUNC2 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct agent_expr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 void* axs_lvalue_memory ; 
 void* axs_lvalue_register ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (unsigned char*,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,unsigned char*) ; 

__attribute__((used)) static void
FUNC8 (struct symbol * symbol, struct agent_expr * ax,
			   struct axs_value * value, unsigned char *data,
			   int size)
{
  if (size == 0)
    FUNC5 ("Symbol \"%s\" has been optimized out.",
	   FUNC0 (symbol));

  if (size == 1
      && data[0] >= DW_OP_reg0
      && data[0] <= DW_OP_reg31)
    {
      value->kind = axs_lvalue_register;
      value->u.reg = data[0] - DW_OP_reg0;
    }
  else if (data[0] == DW_OP_regx)
    {
      ULONGEST reg;
      FUNC7 (data + 1, data + size, &reg);
      value->kind = axs_lvalue_register;
      value->u.reg = reg;
    }
  else if (data[0] == DW_OP_fbreg)
    {
      /* And this is worse than just minimal; we should honor the frame base
	 as above.  */
      int frame_reg;
      LONGEST frame_offset;
      unsigned char *buf_end;

      buf_end = FUNC6 (data + 1, data + size, &frame_offset);
      if (buf_end != data + size)
	FUNC5 ("Unexpected opcode after DW_OP_fbreg for symbol \"%s\".",
	       FUNC0 (symbol));

      FUNC1 (ax->scope, &frame_reg, &frame_offset);
      FUNC3 (ax, frame_reg);
      FUNC2 (ax, frame_offset);
      FUNC4 (ax, aop_add);

      FUNC2 (ax, frame_offset);
      FUNC4 (ax, aop_add);
      value->kind = axs_lvalue_memory;
    }
  else
    FUNC5 ("Unsupported DWARF opcode in the location of \"%s\".",
	   FUNC0 (symbol));
}