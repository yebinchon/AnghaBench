#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  segT ;
struct TYPE_5__ {int X_add_number; int /*<<< orphan*/ * X_add_symbol; void* X_op; int /*<<< orphan*/ * X_op_symbol; } ;
typedef  TYPE_1__ expressionS ;
typedef  enum dwarf2_format { ____Placeholder_dwarf2_format } dwarf2_format ;
struct TYPE_7__ {int /*<<< orphan*/ * text_end; int /*<<< orphan*/ * text_start; int /*<<< orphan*/ * next; } ;
struct TYPE_6__ {int dir; char* filename; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int DW_LANG_Mips_Assembler ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 void* O_subtract ; 
 void* O_symbol ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* VERSION ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_4__* all_segs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char** dirs ; 
 int dwarf2_format_32bit ; 
 int dwarf2_format_64bit ; 
 int dwarf2_format_64bit_irix ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 TYPE_2__* files ; 
 int files_in_use ; 
 char* FUNC7 (int) ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int sizeof_address ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/ * FUNC20 () ; 

__attribute__((used)) static void
FUNC21 (segT info_seg, segT abbrev_seg, segT line_seg, segT ranges_seg)
{
  char producer[128];
  char *comp_dir;
  expressionS expr;
  symbolS *info_start;
  symbolS *info_end;
  char *p;
  int len;
  enum dwarf2_format d2f;
  int sizeof_offset;

  FUNC17 (info_seg, 0);

  info_start = FUNC20 ();
  info_end = FUNC19 ();

  /* Compilation Unit length.  */
  expr.X_op = O_subtract;
  expr.X_add_symbol = info_end;
  expr.X_op_symbol = info_start;

  d2f = FUNC0 ();
  if (d2f == dwarf2_format_32bit)
    {
      expr.X_add_number = -4;
      FUNC6 (&expr, 4);
      sizeof_offset = 4;
    }
  else if (d2f == dwarf2_format_64bit)
    {
      expr.X_add_number = -12;
      FUNC11 (-1);
      FUNC6 (&expr, 8);
      sizeof_offset = 8;
    }
  else if (d2f == dwarf2_format_64bit_irix)
    {
      expr.X_add_number = -8;
      FUNC6 (&expr, 8);
      sizeof_offset = 8;
    }
  else
    {
      FUNC5 (FUNC3("internal error: unknown dwarf2 format"));
    }

  /* DWARF version.  */
  FUNC12 (2);

  /* .debug_abbrev offset */
  FUNC2 (FUNC14 (abbrev_seg), sizeof_offset);

  /* Target address size.  */
  FUNC10 (sizeof_address);

  /* DW_TAG_compile_unit DIE abbrev */
  FUNC13 (1);

  /* DW_AT_stmt_list */
  /* ??? sizeof_offset */
  FUNC2 (FUNC14 (line_seg), 4);

  /* These two attributes are emitted if all of the code is contiguous.  */
  if (all_segs->next == NULL)
    {
      /* DW_AT_low_pc */
      expr.X_op = O_symbol;
      expr.X_add_symbol = all_segs->text_start;
      expr.X_add_number = 0;
      FUNC6 (&expr, sizeof_address);

      /* DW_AT_high_pc */
      expr.X_op = O_symbol;
      expr.X_add_symbol = all_segs->text_end;
      expr.X_add_number = 0;
      FUNC6 (&expr, sizeof_address);
    }
  else
    {
      /* This attribute is emitted if the code is disjoint.  */
      /* DW_AT_ranges.  */
      FUNC2 (FUNC14 (ranges_seg), sizeof_offset);
    }

  /* DW_AT_name.  We don't have the actual file name that was present
     on the command line, so assume files[1] is the main input file.
     We're not supposed to get called unless at least one line number
     entry was emitted, so this should always be defined.  */
  if (!files || files_in_use < 1)
    FUNC4 ();
  if (files[1].dir)
    {
      len = FUNC16 (dirs[files[1].dir]);
      p = FUNC7 (len + 1);
      FUNC9 (p, dirs[files[1].dir], len);
      FUNC1 (p, len);
    }
  len = FUNC16 (files[1].filename) + 1;
  p = FUNC7 (len);
  FUNC9 (p, files[1].filename, len);

  /* DW_AT_comp_dir */
  comp_dir = FUNC8 ();
  len = FUNC16 (comp_dir) + 1;
  p = FUNC7 (len);
  FUNC9 (p, comp_dir, len);

  /* DW_AT_producer */
  FUNC15 (producer, "GNU AS %s", VERSION);
  len = FUNC16 (producer) + 1;
  p = FUNC7 (len);
  FUNC9 (p, producer, len);

  /* DW_AT_language.  Yes, this is probably not really MIPS, but the
     dwarf2 draft has no standard code for assembler.  */
  FUNC12 (DW_LANG_Mips_Assembler);

  FUNC18 (info_end);
}