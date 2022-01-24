#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct line_seg {int /*<<< orphan*/ * text_end; int /*<<< orphan*/  seg; int /*<<< orphan*/ * text_start; struct line_seg* next; } ;
typedef  int /*<<< orphan*/  segT ;
typedef  int /*<<< orphan*/  fragS ;
struct TYPE_3__ {scalar_t__ X_add_number; int /*<<< orphan*/ * X_op_symbol; int /*<<< orphan*/ * X_add_symbol; int /*<<< orphan*/  X_op; } ;
typedef  TYPE_1__ expressionS ;
typedef  int addressT ;

/* Variables and functions */
 int /*<<< orphan*/  O_subtract ; 
 int /*<<< orphan*/  O_symbol ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct line_seg* all_segs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned int sizeof_address ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15 (segT aranges_seg, segT info_seg)
{
  unsigned int addr_size = sizeof_address;
  addressT size, skip;
  struct line_seg *s;
  expressionS expr;
  char *p;

  size = 4 + 2 + 4 + 1 + 1;

  skip = 2 * addr_size - (size & (2 * addr_size - 1));
  if (skip == 2 * addr_size)
    skip = 0;
  size += skip;

  for (s = all_segs; s; s = s->next)
    size += 2 * addr_size;

  size += 2 * addr_size;

  FUNC13 (aranges_seg, 0);

  /* Length of the compilation unit.  */
  FUNC10 (size - 4);

  /* Version.  */
  FUNC11 (2);

  /* Offset to .debug_info.  */
  /* ??? sizeof_offset */
  FUNC0 (FUNC12 (info_seg), 4);

  /* Size of an address (offset portion).  */
  FUNC9 (addr_size);

  /* Size of a segment descriptor.  */
  FUNC9 (0);

  /* Align the header.  */
  if (skip)
    FUNC4 (FUNC2 (2 * addr_size) - 1, 0, 0);

  for (s = all_segs; s; s = s->next)
    {
      fragS *frag;
      symbolS *beg, *end;

      frag = FUNC3 (s->seg);
      beg = FUNC14 (s->seg, 0, frag);
      s->text_start = beg;

      frag = FUNC7 (s->seg);
      end = FUNC14 (s->seg, FUNC6 (frag, s->seg), frag);
      s->text_end = end;

      expr.X_op = O_symbol;
      expr.X_add_symbol = beg;
      expr.X_add_number = 0;
      FUNC1 (&expr, addr_size);

      expr.X_op = O_subtract;
      expr.X_add_symbol = end;
      expr.X_op_symbol = beg;
      expr.X_add_number = 0;
      FUNC1 (&expr, addr_size);
    }

  p = FUNC5 (2 * addr_size);
  FUNC8 (p, 0, addr_size);
  FUNC8 (p + addr_size, 0, addr_size);
}