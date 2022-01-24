#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct line_seg {TYPE_1__* head; int /*<<< orphan*/  seg; struct line_seg* next; } ;
typedef  int /*<<< orphan*/  segT ;
struct TYPE_5__ {int X_add_number; int /*<<< orphan*/ * X_op_symbol; int /*<<< orphan*/ * X_add_symbol; void* X_op; } ;
typedef  TYPE_2__ expressionS ;
typedef  enum dwarf2_format { ____Placeholder_dwarf2_format } dwarf2_format ;
struct TYPE_4__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int DWARF2_LINE_BASE ; 
 int DWARF2_LINE_DEFAULT_IS_STMT ; 
 int DWARF2_LINE_MIN_INSN_LENGTH ; 
 int DWARF2_LINE_OPCODE_BASE ; 
 int DWARF2_LINE_RANGE ; 
 void* O_subtract ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct line_seg* all_segs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int dwarf2_format_32bit ; 
 int dwarf2_format_64bit ; 
 int dwarf2_format_64bit_irix ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 

__attribute__((used)) static void
FUNC13 (segT line_seg)
{
  expressionS expr;
  symbolS *line_start;
  symbolS *prologue_end;
  symbolS *line_end;
  struct line_seg *s;
  enum dwarf2_format d2f;
  int sizeof_initial_length;
  int sizeof_offset;

  FUNC9 (line_seg, 0);

  line_start = FUNC12 ();
  prologue_end = FUNC11 ();
  line_end = FUNC11 ();

  /* Total length of the information for this compilation unit.  */
  expr.X_op = O_subtract;
  expr.X_add_symbol = line_end;
  expr.X_op_symbol = line_start;

  d2f = FUNC0 ();
  if (d2f == dwarf2_format_32bit)
    {
      sizeof_initial_length = sizeof_offset = 4;
    }
  else if (d2f == dwarf2_format_64bit)
    {
      sizeof_initial_length = 12;
      sizeof_offset = 8;
      FUNC6 (-1);
    }
  else if (d2f == dwarf2_format_64bit_irix)
    {
      sizeof_initial_length = sizeof_offset = 8;
    }
  else
    {
      FUNC2 (FUNC1("internal error: unknown dwarf2 format"));
    }
  expr.X_add_number = -sizeof_initial_length;
  FUNC3 (&expr, sizeof_offset);

  /* Version.  */
  FUNC7 (2);

  /* Length of the prologue following this length.  */
  expr.X_op = O_subtract;
  expr.X_add_symbol = prologue_end;
  expr.X_op_symbol = line_start;
  expr.X_add_number = - (sizeof_initial_length + 2 + sizeof_offset);
  FUNC3 (&expr, sizeof_offset);

  /* Parameters of the state machine.  */
  FUNC4 (DWARF2_LINE_MIN_INSN_LENGTH);
  FUNC4 (DWARF2_LINE_DEFAULT_IS_STMT);
  FUNC4 (DWARF2_LINE_BASE);
  FUNC4 (DWARF2_LINE_RANGE);
  FUNC4 (DWARF2_LINE_OPCODE_BASE);

  /* Standard opcode lengths.  */
  FUNC4 (0);			/* DW_LNS_copy */
  FUNC4 (1);			/* DW_LNS_advance_pc */
  FUNC4 (1);			/* DW_LNS_advance_line */
  FUNC4 (1);			/* DW_LNS_set_file */
  FUNC4 (1);			/* DW_LNS_set_column */
  FUNC4 (0);			/* DW_LNS_negate_stmt */
  FUNC4 (0);			/* DW_LNS_set_basic_block */
  FUNC4 (0);			/* DW_LNS_const_add_pc */
  FUNC4 (1);			/* DW_LNS_fixed_advance_pc */
  FUNC4 (0);			/* DW_LNS_set_prologue_end */
  FUNC4 (0);			/* DW_LNS_set_epilogue_begin */
  FUNC4 (1);			/* DW_LNS_set_isa */

  FUNC5 ();

  FUNC10 (prologue_end);

  /* For each section, emit a statement program.  */
  for (s = all_segs; s; s = s->next)
    FUNC8 (s->seg, s->head->head);

  FUNC10 (line_end);
}