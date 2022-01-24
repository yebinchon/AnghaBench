#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_3__* basic_block ;
struct TYPE_8__ {TYPE_1__* rtl; } ;
struct TYPE_9__ {TYPE_2__ il; } ;
struct TYPE_7__ {int /*<<< orphan*/  global_live_at_end; int /*<<< orphan*/  global_live_at_start; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (basic_block bb, FILE *outf, int indent)
{
  rtx insn;
  rtx last;
  char *s_indent;

  s_indent = FUNC3 ((size_t) indent + 1);
  FUNC6 (s_indent, ' ', (size_t) indent);
  s_indent[indent] = '\0';

  FUNC5 (outf, ";;%s Registers live at start: ", s_indent);
  FUNC4 (bb->il.rtl->global_live_at_start, outf);
  FUNC8 ('\n', outf);

  for (insn = FUNC1 (bb), last = FUNC2 (FUNC0 (bb)); insn != last;
       insn = FUNC2 (insn))
    FUNC7 (outf, insn);

  FUNC5 (outf, ";;%s Registers live at end: ", s_indent);
  FUNC4 (bb->il.rtl->global_live_at_end, outf);
  FUNC8 ('\n', outf);
}