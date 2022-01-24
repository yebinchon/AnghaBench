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
typedef  scalar_t__ unichar ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (FILE *fp, const unichar *sym_name, const unichar *typecast)
{
  char *sym;

  if (!sym_name || sym_name[0] == 0)
    return;
  sym = FUNC0 (sym_name);
  FUNC1 (fp, "  {(");
  if (typecast)
    FUNC3 (fp, typecast, FUNC2 (typecast));
  else
    FUNC1 (fp, "DWORD");
  FUNC1 (fp, ") %s, \"%s\" },\n", sym, sym);
}