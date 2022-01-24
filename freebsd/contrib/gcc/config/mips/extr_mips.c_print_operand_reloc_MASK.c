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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (FILE *file, rtx op, const char **relocs)
{
  enum mips_symbol_type symbol_type;
  const char *p;
  rtx base;
  HOST_WIDE_INT offset;

  symbol_type = FUNC5 (op);
  if (relocs[symbol_type] == 0)
    FUNC2 ("PRINT_OPERAND, invalid operand for relocation", op);

  /* If OP uses an UNSPEC address, we want to print the inner symbol.  */
  FUNC6 (op, &base, &offset);
  if (FUNC1 (base))
    op = FUNC8 (FUNC0 (base), offset);

  FUNC4 (relocs[symbol_type], file);
  FUNC7 (file, op);
  for (p = relocs[symbol_type]; *p != 0; p++)
    if (*p == '(')
      FUNC3 (')', file);
}