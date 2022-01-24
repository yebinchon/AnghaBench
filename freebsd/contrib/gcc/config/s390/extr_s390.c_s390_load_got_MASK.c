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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  SYMBOL_REF_FLAGS ;

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SYMBOL_FLAG_LOCAL ; 
 scalar_t__ TARGET_CPU_ZARCH ; 
 int /*<<< orphan*/  UNSPEC_LTREL_BASE ; 
 int /*<<< orphan*/  UNSPEC_LTREL_OFFSET ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ got_symbol ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 
 int /*<<< orphan*/  FUNC10 () ; 

rtx
FUNC11 (void)
{
  rtx insns;

  if (!got_symbol)
    {
      got_symbol = FUNC7 (Pmode, "_GLOBAL_OFFSET_TABLE_");
      SYMBOL_REF_FLAGS (got_symbol) = SYMBOL_FLAG_LOCAL;
    }

  FUNC10 ();

  if (TARGET_CPU_ZARCH)
    {
      FUNC1 (pic_offset_table_rtx, got_symbol);
    }
  else
    {
      rtx offset;

      offset = FUNC8 (Pmode, FUNC4 (1, got_symbol),
			       UNSPEC_LTREL_OFFSET);
      offset = FUNC5 (Pmode, offset);
      offset = FUNC3 (Pmode, offset);

      FUNC1 (pic_offset_table_rtx, offset);

      offset = FUNC8 (Pmode, FUNC4 (1, FUNC0 (offset, 0)),
			       UNSPEC_LTREL_BASE);
      offset = FUNC6 (Pmode, pic_offset_table_rtx, offset);

      FUNC1 (pic_offset_table_rtx, offset);
    }

  insns = FUNC9 ();
  FUNC2 ();
  return insns;
}